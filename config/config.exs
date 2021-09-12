# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :json,
  ecto_repos: [Json.Repo]

# Configures the endpoint
config :json, JsonWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eF3XPkTmH+3ojPSEKFtwF7SPTilZRHlB3tZ2JoseMbijeALwIRsY4utzurnU18oq",
  render_errors: [view: JsonWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Json.PubSub,
  live_view: [signing_salt: "Kiw3rgLk"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
