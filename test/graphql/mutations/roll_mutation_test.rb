require 'test_helper'

module Mutations
  class RollMutationTest < ActiveSupport::TestCase
    def perform(dices:)
      Mutations::RollMutation.new(object: nil, field: nil, context: {}).resolve(dices: dices)
    end

    test 'create a roll and with one dice' do
      roll = perform(dices: '1d6')

      assert roll.persisted?
      assert_equal roll.dices.size, 1
    end

    test 'create a roll with multiple dices' do
      roll = perform(dices: '2d4+6d20+1d6')

      assert roll.persisted?
      assert_equal roll.dices.size, 2 + 6 + 1
    end
  end
end
