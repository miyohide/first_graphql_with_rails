class Types::DateTime < Types::BaseScalar
  def self.coerce_input(input_value, context)
    begin
      Time.zone.parse(input_value)
    rescue ArgumentError => ex
      raise GraphQL::CoercionError, "#{input_value.inspect} is not a valid DateTime"
    end
  end

  def self.coerce_result(ruby_value, context)
    ruby_value.iso8601
  end
end
