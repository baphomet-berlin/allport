require "phony_rails"

module Allport
  class PhoneNumber < ActiveRecord::Base
    belongs_to :country
    belongs_to :contact
    validates_plausible_phone :number, presence: true
    phony_normalize :number, default_country_code: 'US'
    after_validation :split_number

    private

    def split_number
      if (self.number and self.errors[:number].empty?)
        split_number = Phony.split(self.number.gsub(/\D/, ''))
        self.number = split_number.join
      end
    end
  end
end
