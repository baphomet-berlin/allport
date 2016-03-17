require 'test_helper'

module Allport
  class ContactableTest < ActiveSupport::TestCase

    test "Basic validation" do
      contact = User.new first_name: 'Claudio', email: 'cbrandolino@gmail.com'
      assert_not contact.save, 
        "Contact not saved without :last_name"
      contact = User.new last_name: 'Brandolino', email: 'cbrandolino@gmail.com'
      assert_not contact.save, 
        "Contact not saved without :first_name"
      contact = User.new first_name: 'Claudio', last_name: 'Brandolino'
      assert_not contact.save, 
        "Contact not saved without :email"
      contact.email = "cbrandolino@gmail.com"
      assert contact.save, 
        "Contact saved with :first_name, :last_name, :email" 
    end
    
    test "Uniqueness validation" do
      User.create! first_name: 'Mario', last_name: 'Barcolino', email: 'newmail@gmail.com'
      contact = User.new first_name: 'Mario', last_name: 'Barcolino', email: 'newmail1@gmail.com'
      assert_not contact.save, 
        "Contact not saved with duplicate :first, :middle and :last_name"
      contact.middle_name = 'bubu'
      contact.email = 'newmail2@gmail.com'
      assert contact.save, 
        "Contact saved with unique combo of :first, :middle and :last_name"
      contact = User.new first_name: 'New', last_name: 'Mail', email: 'newmail@gmail.com'
      assert_not contact.save,
        "Contact not saved with duplicate :email"
    end

  end
end