# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :inmana, Inmana.Repo,
  database: "inmana_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"

config :inmana, Inmana.Repo,
  database: "inmana_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"

config :inmana,
  ecto_repos: [Inmana.Repo]

# Configures the endpoint
config :inmana, InmanaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LompQ9RvhYMMkwMq8wchwzoIBDUqEoD/+fe4RSt0dbUFZ9eKH5Mur5sD7kSuVg8F",
  render_errors: [view: InmanaWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Inmana.PubSub,
  live_view: [signing_salt: "YES9cwKi"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
