defmodule PhoenixDemo.PageController do
  use PhoenixDemo.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
