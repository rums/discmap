import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :discmap, Discmap.Repo,
  username: "discmap",
  password: "discmap",
  hostname: "localhost",
  database: "discmap_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :discmap, DiscmapWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "xM3cDl4icLhN3VMg8s8FZ8s6C7mEzZBKjFWCw61lE5rrQ76Rvn7KYxEo4r92xLXd",
  server: false

# In test we don't send emails.
config :discmap, Discmap.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
