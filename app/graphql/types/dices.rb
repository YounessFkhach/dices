module Types
  class Dices < Types::BaseScalar
    description 'A string following the dice notation ex: "2d12" or "1d4+2d20"'

    def self.coerce_input(input_value, context)
      if input_value&.match?(/^((\d+)+d\d+\+)*((\d+)+d\d+)$/)
        # we just return the input value since we will handle parsing it on the mutation
        input_value
      else
        raise GraphQL::CoercionError, "#{input_value.inspect} is not a valid dice notation"
      end
    end

    def self.coerce_result(ruby_value, context)
      ruby_value.to_s
    end
  end
end
