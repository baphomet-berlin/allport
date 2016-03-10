require "phony_rails"

module Allport
  class PhoneNumber < ActiveRecord::Base
    belongs_to :country
    belongs_to :contact
    validates_plausible_phone :number, presence: true
    phony_normalize :number, default_country_code: 'US'
    after_validate :split_number

    def split_number
      split_number = Phony.split(self.number.gsub(/\D/, ''))
      self.prefix = split_number.shift
      self.number = split_number.join
    end
  end
end
