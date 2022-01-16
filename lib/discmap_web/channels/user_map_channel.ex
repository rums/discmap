defmodule DiscmapWeb.UserMapChannel do
  use DiscmapWeb, :channel

  alias Discmap.Maps
  alias Discmap.Accounts

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
            "username" => username,
            "direction" => direction
          }
        },
        socket
      ) do
    case change_room(username, direction) do
      {:result, result} ->
        broadcast!(socket, "mud_msg", %{
          body: %{
            src: result.map.filepath,
            room_short: result.room.room_short,
            x: result.room.xpos,
            y: result.room.ypos
          }
        })

        {:noreply, socket}

      {:error, _any} ->
        {:noreply, socket}
    end
  end

  @impl true
  def handle_in(
        "mud_msg",
        %{
          "body" => %{
            "username" => username,
            "room_short" => room_short
          }
        },
        socket
      ) do
    case set_room(username, room_short) do
      {:result, result} ->
        broadcast!(socket, "mud_msg", %{
          body: %{
            src: result.map.filepath,
            room_short: result.room.room_short,
            x: result.room.xpos,
            y: result.room.ypos
          }
        })

        {:noreply, socket}

      {:error, _any} ->
        {:noreply, socket}
    end
  end

  def set_room(username, room_short) do
    user = Accounts.get_user_by_username!(username)

    sent_room =
      if room_short != nil do
        Maps.get_room_by_room_short!(room_short)
      end

    if sent_room != nil do
      Accounts.update_user(user, %{
        current_room_id: sent_room.room_id
      })

      map = Maps.get_map_by_map_id!(sent_room.map_id)
      {:result, %{map: map, room: sent_room}}
    else
      {:error, %{reason: "room_short not found"}}
    end
  end

  @spec change_room(any, any) ::
          nil
          | {:error, %{reason: <<_::112>>}}
          | {:result,
             %{map: any, room: atom | %{:map_id => any, :room_id => any, optional(any) => any}}}
  def change_room(username, direction) do
    abbr_direction = case direction do
      "north" -> "n"
      "south" -> "s"
      "east" -> "e"
      "west" -> "w"
      "northwest" -> "nw"
      "northeast" -> "ne"
      "southwest" -> "sw"
      "southeast" -> "se"
      "up" -> "u"
      "down" -> "d"
      _ -> direction
    end
    user = Accounts.get_user_by_username!(username)

    if user.current_room_id != nil do
      room = Maps.get_connected_room(user.current_room_id, abbr_direction)

      if room != nil do
        # update user current room in repo
        Accounts.update_user(user, %{
          current_room_id: room.room_id
        })

        map = Maps.get_map_by_map_id!(room.map_id)

        {:result, %{map: map, room: room}}
      else
        {:error, %{reason: "room not found"}}
      end
    end
  end

  # Add authorization logic here as required.
  defp authorized?(_payload) do
    true
  end
end
