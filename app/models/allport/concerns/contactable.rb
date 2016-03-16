module Allport
  module Concerns
    module Contactable
      extend ActiveSupport::Concern
      included do
        has_one :contact, as: :contactable, class_name: Allport::Contact
        accepts_nested_attributes_for :contact
        after_initialize :hook_contact

        private

        def hook_contact
          self.contact ||= Allport::Contact.new
        end
      end
    end
  end
end