module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :rolls, [Types::RollType], null: false

    def rolls
      Roll.all
    end

    field :roll, Types::RollType, null: false do
      argument :id, ID, required: true
    end

    def roll(id:)
      Roll.find(id)
    end
  end
end
