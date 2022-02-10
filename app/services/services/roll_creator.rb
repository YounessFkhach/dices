module Services
  class RollCreator
    attr_accessor :dices, :advantage

    def initialize(dices:, advantage:)
      @dices = dices
      @advantage = advantage
    end

    def call
      # Initialize the roll record
      roll = Roll.new

      # build the dices
      roll.dices.build(dices_to_create)

      roll.save!
      roll
    end

    private

    # takes the dices formula ex: '2d6+1d20'
    # and returns an array of dice params to create
    def dices_to_create
      dices.split('+').map do |dice_formula|
        count, range = dice_formula.split('d').map(&:to_i)

        # Generate {count} number of dices
        (1..count).map do
          { kind: "d#{range}", value: random_value_from_range(range) }
        end
      end
    end

    def random_value_from_range(range)
      rand(1..range)
    end
  end
end
