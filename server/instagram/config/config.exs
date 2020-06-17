# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :instagram,
  ecto_repos: [Instagram.Repo]

# Configures the endpoint
config :instagram, InstagramWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TfWxu9HtxtFkKK3NJHq2B+PjR77jTTIuimIs5O1wM4VggIwMpTny18WoZBE/pKDW",
  render_errors: [view: InstagramWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Instagram.PubSub,
  live_view: [signing_salt: "hIH3RUAB"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# config Guardian
config :instagram, InstagramWeb.Auth.Guardian,
  issuer: "instagram",
  verify_issuer: true,
  secret_key: "ZnlLtxqtr+zs483OEY8DVgpxqxrnhqxzSyluCnciVZrHKSKbVPJ5RD+AM/Odws5r"

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
