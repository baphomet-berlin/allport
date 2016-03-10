module Contactable
  extend ActiveSupport::Concern
  def self.included(base)
    base.send(:form) do |f|
      f.inputs :first_name, :last_name, :email, 
        name: "Contact card",
        for: [:contact, f.object.contact || Allport::Contact.new]
    end
  end
end
