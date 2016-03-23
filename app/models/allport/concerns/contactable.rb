module Allport
  module Concerns
    module Contactable
      extend ActiveSupport::Concern

      included do
        has_one :contact_card, as: :contactable, class_name: 'Allport::ContactCard'
        validates :first_name, presence: true
        validates :last_name, presence: true
        validates :email, presence: true
        validates :first_name, uniqueness: { scope: [:middle_name, :last_name] }
        validates :email, uniqueness: true

        private

        def hook_contact_card
          self.contact_card = Allport::ContactCard.new
        end
      end
    end
  end
end