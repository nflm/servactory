# frozen_string_literal: true

module Servactory
  module Methods
    module MakeAliases
      class Collection
        # NOTE: http://words.steveklabnik.com/beware-subclassing-ruby-core-classes
        extend Forwardable
        def_delegators :@collection, :<<, :merge, :include?

        def initialize(*)
          @collection = Set.new
        end
      end
    end
  end
end
