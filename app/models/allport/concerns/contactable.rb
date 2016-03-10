module Allport
  module Contactable
    extend ActiveSupport::Concern
    included do
      has_one :contact, through: :contactable
    end
  end
end