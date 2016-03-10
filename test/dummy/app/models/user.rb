class User < ActiveRecord::Base
  has_one :contact, as: :contactable, class_name: Allport::Contact
  accepts_nested_attributes_for :contact
end