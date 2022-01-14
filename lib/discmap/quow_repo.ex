defmodule Discmap.QuowRepo do
  use Ecto.Repo,
    otp_app: :discmap,
    adapter: Ecto.Adapters.Postgres
end
