module Mutations
  class RollMutation < Mutations::BaseMutation
    argument :dices, Types::Dices, required: true
    argument :advantage, Types::AdvantageType, required: false, default_value: 'normal'

    type Types::RollType

    def resolve(dices:, advantage:)
      ::Services::RollCreator.new(dices: dices, advantage: advantage, session_id: context[:session_id]).call
    end
  end
end
