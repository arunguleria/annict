# typed: false
# frozen_string_literal: true

module Canary
  module Types
    module InputObjects
      class CastOrder < Canary::Types::InputObjects::Base
        argument :field, Canary::Types::Enums::CastOrderField, required: true
        argument :direction, Canary::Types::Enums::OrderDirection, required: true
      end
    end
  end
end
