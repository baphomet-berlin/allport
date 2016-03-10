require 'test_helper'

module Allport
  class ContactableTest < ActiveSupport::TestCase
    setup do
      @user = User.new
      @contact = Allport::Contact.find(1)
    end
    test "Can add user to contact" do
      @contact.contactable = @user
      @contact.save
      assert_equal @user.contact, @contact,
        "User is assigned the right contact"
    end
    test "Can add contact to user" do
      @user.contact = @contact
      @user.contact.save
      assert_equal @user.contact, @contact,
        "Contact is assigned the right user"
    end
  end
end