defmodule DiscmapWeb.UserMapChannel do
  use DiscmapWeb, :channel

  alias Discmap.Maps
  alias Discmap.Maps.Room

  @impl true
  def join("user_map:" <> username, payload, socket) do
    if authorized?(payload) do
      {:ok, socket}
    else
      {:error, %{reason: "unauthorized"}}
    end
  end

  @impl true
  def handle_in("new_msg", %{"body" => body}, socket) do
    broadcast!(socket, "new_msg", %{
      body: %{
        src: body,
        x: 200,
        y: 200
      }
    })

    {:noreply, socket}
  end

  @impl true
  def handle_in(
        "mud_msg",
        %{
          "body" => %{
            "room_short" => room_short,
            "x" => x,
            "y" => y
          }
        },
        socket
      ) do
    # TODO: do some processing server side
    result = get_map_data(room_short, x, y)
    # return data for map to display
    broadcast!(socket, "mud_msg", %{
      body: %{
        src: result.src,
        room_short: result.room_short,
        x: result.x,
        y: result.y
      }
    })

    {:noreply, socket}
  end

  def get_map_data(room_short, _x, _y) do
    # get room by room_short
    room = Maps.get_room_by_room_short!(room_short)
    map = Maps.get_map_by_map_id!(room.map_id)
    %{src: map.filepath,
      room_short: room.room_short,
      x: room.xpos,
      y: room.ypos
    }
  end

  # Channels can be used in a request/response fashion
  # by sending replies to requests from the client
  @impl true
  def handle_in("ping", payload, socket) do
    {:reply, {:ok, payload}, socket}
  end

  # It is also common to receive messages from the client and
  # broadcast to everyone in the current topic (user_map:lobby).
  @impl true
  def handle_in("shout", payload, socket) do
    broadcast(socket, "shout", payload)
    {:noreply, socket}
  end

  # Add authorization logic here as required.
  defp authorized?(_payload) do
    true
  end
end