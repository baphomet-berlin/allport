class User < ActiveRecord::Base
  include Allport::Concerns::Contactable
end
