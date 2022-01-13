defmodule DiscmapWeb.PageController do
  use DiscmapWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
