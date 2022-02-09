module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"

    # TODO: add tests
    field :roll, mutation: Mutations::RollMutation, null: false

    def test_field
      "Hello World"
    end
  end
end
