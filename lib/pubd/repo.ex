defmodule Pubd.Repo do
  use Ecto.Repo,
    otp_app: :pubd,
    adapter: Ecto.Adapters.Postgres
end
