import Config

config :cqrs_tools_absinthe_relay, :repo, Cqrs.Repo
config :cqrs_tools, :context_shipper, Cqrs.Absinthe.Relay.Test.DispatchContextShipper
