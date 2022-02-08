defmodule Cqrs.Absinthe.Relay.Config do
  @moduledoc false

  alias Cqrs.Behaviour
  alias Cqrs.Absinthe.Relay.Error

  def get_repo!(opts \\ []) do
    case Keyword.get(opts, :repo) || get(:repo) do
      nil -> raise_no_repo!()
      repo -> Behaviour.validate!(repo, Ecto.Repo)
    end
  end

  defp raise_no_repo! do
    raise Error,
      message: """
      You must either supply a repo via an option
      or configure the repo in your config.exs file like so:

      "config :cqrs_tools_absinthe_relay, :repo, MyRepo"
      """
  end

  defp get(key), do: Application.get_env(:cqrs_tools_absinthe_relay, key)
end
