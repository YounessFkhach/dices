class Roll < ApplicationRecord
  has_many :dices
  has_one  :advantage_dice, -> { Dice.advantage_dices }, class_name: 'Dice'
  has_many :normal_dices,   -> { Dice.non_advantage_dices }, class_name: 'Dice'

  enum advantage_type: %i{normal advantage disadvantage}

  def total
    return [normal_dices_value_sum, advantage_dice_value].max if advantage?
    return [normal_dices_value_sum, advantage_dice_value].min if disadvantage?
    return normal_dices_value_sum
  end

  def normal_dices_value_sum
    normal_dices.sum(:value)
  end

  def advantage_dice_value
    advantage_dice.value
  end
end
