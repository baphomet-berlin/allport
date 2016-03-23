module Allport
  module Admin
    class RailsAdminGenerator < Rails::Generators::Base

      def self.source_root
        @source_root ||= File.expand_path('../templates', __FILE__)
      end

    end
  end
end