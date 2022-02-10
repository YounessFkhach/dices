module Mutations
  class RollMutation < Mutations::BaseMutation
    argument :dices, String, required: true
    argument :advantage, Types::AdvantageType, required: false, default_value: 'none'

    type Types::RollType

    def resolve(dices:, advantage:)
      ::Services::RollCreator.new(dices: dices, advantage: advantage).call
    end
  end
end
