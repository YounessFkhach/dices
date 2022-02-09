# frozen_string_literal: true

module Types
  class RollType < Types::BaseObject
    implements Types::BaseInterface

    field :id, ID, null: false
    field :total, Integer, null: false
    field :dices, Types::DiceType.connection_type
    field :rolled_at, GraphQL::Types::ISO8601DateTime, null: false, method: :created_at

    field :dices_count, Integer

    def dices_count
      object.dices.size
    end
  end
end
