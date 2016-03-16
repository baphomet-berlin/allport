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
      contact = User.new first_name: 'Mario', last_name: 'Barcolino', email: 'newmail@gmail.com'
      assert_not contact.save, 
        "Contact not saved with duplicate :first, :middle and :last_name"
      contact.middle_name = "X"
      assert contact.save, 
        "Contact saved with unique combo of :first, :middle and :last_name"
      contact = User.new first_name: 'New', last_name: 'Mail', email: 'newmail@gmail.com'
      assert_not contact.save,
        "Contact not saved with duplicate :email"
    end

  #   test "Can add :user to Contact" do
  #     @contact.contactable = @user
  #     @contact.save
  #     assert_equal @contact.contactable, @user,
  #       ":user is assigned to the right Contact"
  #   end
  #   test "Can add :contact to User" do
  #     @user.contact = @contact
  #     @user.contact.save
  #     assert_equal @user.contact, @contact,
  #       ":contact is assigned to the right User"
  #   end
  #   test "Add new :contact to User if User has no :contact upon init" do
  #     @user.contact.save
  #     assert_equal @user.contact.class.name, 'Allport::Contact',
  #       "User is assigned a new :contact"
  #   end
  #   test "Do not change User's :contact if User has one already" do
  #     @user.contact = @contact
  #     @user.save()
  #     user = User.first()
  #     assert_equal user.contact.id, 1,
  #       "User is not assigned a new :contact"
  #   end
  end
end