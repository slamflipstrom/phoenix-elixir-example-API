defmodule PhoenixDemo.Router do
  use PhoenixDemo.Web, :router

  pipeline :api do
    plug Corsica, [origin: "http://localhost:4200"]
    plug :accepts, ["json"]
  end

  scope "/", PhoenixDemo do
    pipe_through :api # Use the default browser stack

    scope "/v1", V1, as: :v1 do
      resources "/posts", PostController
      options "/posts*anything", PostController, :options
    end
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhoenixDemo do
  #   pipe_through :api
  # end
end
