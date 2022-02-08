defmodule Cqrs.Absinthe.Relay.Test.ListPeople do
  use Cqrs.Query
  alias Cqrs.Absinthe.Relay.Test.Person

  field :name, :string
  field :gender, :enum, values: Person.genders()

  binding :person, Person
end
