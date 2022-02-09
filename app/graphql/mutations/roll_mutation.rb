module Mutations
  class RollMutation < Mutations::BaseMutation
    argument :dices, String, required: true

    type Types::RollType

    def resolve(dices:)
      roll = Roll.new

      # build the dices
      dices_to_create = dices.split('+').map do |dice_formula|
        times, range = dice_formula.split('d')

        # Generate as many dices as requested
        (1..(times.to_i)).map do
          { kind: "d#{range}", value: rand(1..range.to_i) }
        end
      end.flatten.compact

      roll.dices.build(dices_to_create)

      roll.save!
      roll
    end
  end
end
