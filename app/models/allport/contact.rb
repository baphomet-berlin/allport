module Allport
  class Contact < ActiveRecord::Base
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :first_name, uniqueness: { scope: [:middle_name, :last_name] }
    validates :email, uniqueness: true
    belongs_to :contactable, polymorphic: true

    if self.method_defined? :rails_admin
      rails_admin do
      end
    end
  end
end
