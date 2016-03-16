require 'rails/generators/active_record'

class Allport::ContactGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
end
