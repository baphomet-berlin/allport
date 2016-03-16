require 'test_helper'

module Allport
  class ContactableTest < ActiveSupport::TestCase

  #   setup do
  #     @user = User.new
  #     @contact = Allport::Contact.find(1)
  #   end
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