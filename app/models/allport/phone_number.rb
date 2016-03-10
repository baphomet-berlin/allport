require "phony_rails"

module Allport
  class PhoneNumber < ActiveRecord::Base
    belongs_to :country
    belongs_to :contact
    validates_plausible_phone :number, presence: true
    phony_normalize :number, default_country_code: 'US'
  end
end
