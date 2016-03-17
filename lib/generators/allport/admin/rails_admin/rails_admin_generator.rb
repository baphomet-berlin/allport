module Allport
  module Admin
    class RailsAdminGenerator < Rails::Generators::NamedBase
      source_root File.expand_path('../templates', __FILE__)
    end
  end
end