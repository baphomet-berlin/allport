module Allport
  class PhoneNumber < ActiveRecord::Base
    belongs_to :country
    belongs_to :contact
    validates_plausible_phone :phone_number, presence: true
    phony_normalize :phone_number, default_country_code: 'US'

  end
end
