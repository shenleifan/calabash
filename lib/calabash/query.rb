module Calabash
  module Query
    # @!visibility private
    def self.valid_query?(query)
      query.is_a?(String)
    end

    # @!visibility private
    def self.ensure_valid_query(query)
      unless valid_query?(query)
        raise ArgumentError, "invalid query '#{query}' (#{query.class})"
      end
    end
  end
end
