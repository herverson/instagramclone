defmodule InstagramWeb.Router do
  use InstagramWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/api", Absinthe.Plug,
      schema: InstagramWeb.Schema

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: InstagramWeb.Schema,
      interface: :simple
  end
end
