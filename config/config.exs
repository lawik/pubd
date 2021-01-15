# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :pubd,
  ecto_repos: [Pubd.Repo]

# Configures the endpoint
config :pubd, PubdWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "L7Yy6P8ahUsl7ZKiJQY9qRe/X5tr76SJV7npIj+Oyijc/ZxBD1IUFXo129m3g/K/",
  render_errors: [view: PubdWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Pubd.PubSub,
  live_view: [signing_salt: "rCQY9j3X"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
