module Allport
  module Admin
    class RailsAdminGenerator < Rails::Generators::Base

      def self.source_root
        @source_root ||= File.expand_path('../templates', __FILE__)
      end

      def copy_initializer_file
        template "allport_rails_admin.rb.erb", "config/initializers/allport_rails_admin.rb"
      end    
    end
  end
end