module Services
  class RollCreator
    attr_accessor :dices, :advantage

    def initialize(dices:, advantage:)
      @dices = dices
      @advantage = advantage
    end

    def call
      # Initialize the roll record
      roll = Roll.new(advantage_type: advantage)

      # generate normal dices
      dices_payload = normal_dices_payload

      # add an advantage_dice when there is an advantage
      unless roll.normal?
        dices_payload << advantage_dice_payload
      end

      # build the dices
      roll.dices.build(dices_payload)

      roll.save!
      roll
    end

    private

    # takes the dices formula ex: '2d6+1d20'
    # and returns an array of dice params to create
    def normal_dices_payload
      dices.split('+').map do |dice_formula|
        count, range = dice_formula.split('d').map(&:to_i)

        # Generate {count} number of dices
        (1..count).map do
          { kind: "d#{range}", value: random_value_from_range(range) }
        end
      end.flatten.compact
    end

    def advantage_dice_payload
      range = Dice::ADVANTAGE_DICE_RANGE
      { kind: "d#{range}", value: random_value_from_range(range), is_advantage: true }
    end

    def random_value_from_range(range)
      rand(1..range)
    end
  end
end
