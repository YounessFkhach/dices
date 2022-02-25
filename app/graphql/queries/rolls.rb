module Queries
  class Rolls < Queries::BaseQuery
    description 'A string following the dice notation ex: "2d12" or "1d4+2d20"'

    type Types::RollType.connection_type, null: false

    def resolve
      Roll.all
    end
  end
end
