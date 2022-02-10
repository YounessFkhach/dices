class Dice < ApplicationRecord
  ADVANTAGE_DICE_RANGE = 20

  belongs_to :roll

  scope :advantage_dices,     -> { where(is_advantage: true) }
  scope :non_advantage_dices, -> { where(is_advantage: false) }
end
