defmodule Discmap.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Discmap.Repo,
      # Start the Telemetry supervisor
      DiscmapWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Discmap.PubSub},
      # Start the Endpoint (http/https)
      DiscmapWeb.Endpoint
      # Start a worker by calling: Discmap.Worker.start_link(arg)
      # {Discmap.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Discmap.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    DiscmapWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
