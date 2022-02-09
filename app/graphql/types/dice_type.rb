# frozen_string_literal: true

module Types
  class DiceType < Types::BaseObject
    field :id, ID, null: false
    field :value, Integer, null: false
    field :dice, String, null: false, method: :kind
    field :rolled_at, GraphQL::Types::ISO8601DateTime, null: false, method: :created_at
    field :roll_id, Integer
  end
end
