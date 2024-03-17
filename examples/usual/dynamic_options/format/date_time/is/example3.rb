# frozen_string_literal: true

module Usual
  module DynamicOptions
    module Format
      module DateTime
        module Is
          class Example3 < ApplicationService::Base
            input :started_at, type: String

            output :started_at, type: String, format: { is: :datetime }

            make :assign_output

            private

            def assign_output
              outputs.started_at = inputs.started_at
            end
          end
        end
      end
    end
  end
end
