module Allport
  class ContactCard < ActiveRecord::Base
    belongs_to :contactable, polymorphic: true
  end
end
