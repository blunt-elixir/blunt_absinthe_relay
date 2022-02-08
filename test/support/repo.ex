defmodule Cqrs.Repo do
  use Ecto.Repo, otp_app: :cqrs_tools_absinthe_relay, adapter: Etso.Adapter
end
