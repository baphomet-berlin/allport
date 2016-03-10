require 'test_helper'

module Allport
  class PhoneNumberTest < ActiveSupport::TestCase
    setup do
      @phone = Allport::PhoneNumber.new
    end
    test "Validation" do
      assert_not @phone.save,
        "Does not save without a :number"
      @phone.number = 123
      assert_not @phone.save,
        "Does not save with an invalid :number"
      @phone.number = "+49302724649"
      assert @phone.save,
        "Save with a valid :number"
    end
    test "Number splitting" do
      @phone.number = "+49302724649"
      @phone.validate
      assert_equal @phone.prefix, '49',
        "lala"
      assert_equal @phone.number, '302724649',
        ":prefix and :number correctly split when number is valid"
    end
  end
end
