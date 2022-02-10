module Types
  class AdvantageType < Types::BaseEnum
    value 'normal',  'Default, normal roll with no advantage nor disadvantage'
    value 'advantage',  'Roll with advantage'
    value 'disadvantage', 'Roll with a disadvantage'
  end
end
