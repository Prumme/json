defmodule Json.Repo do
  use Ecto.Repo,
    otp_app: :json,
    adapter: Ecto.Adapters.Postgres
end
