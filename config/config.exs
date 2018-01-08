# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :slack_ping_pong,
  ecto_repos: [SlackPingPong.Repo]

# Configures the endpoint
config :slack_ping_pong, SlackPingPongWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "5hrQl3118KkZ/7/BBx24hKg3Ed0NPOOQYcaXWqA8y/7fOx+x+bToXgtyNEGI2Ye8",
  render_errors: [view: SlackPingPongWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SlackPingPong.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
