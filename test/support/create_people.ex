defmodule Cqrs.Absinthe.Relay.Test.CreatePeople do
  use Cqrs.Command
  alias Cqrs.Absinthe.Relay.Test.Person

  field :peeps, {:array, Person}
end

defmodule Cqrs.Absinthe.Relay.Test.CreatePeoplePipeline do
  use Cqrs.CommandPipeline

  alias Cqrs.Repo

  def handle_dispatch(%{peeps: peeps}, _context) do
    Enum.map(peeps, &Repo.insert!/1)
  end
end
