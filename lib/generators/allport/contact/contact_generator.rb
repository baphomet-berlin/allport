require_relative '../generator.rb'
require 'rails/generators/active_record'

class Allport::ContactGenerator < ActiveRecord::Generators::Base
  include Allport::GeneratorHelper

  desc "Create a migration to add contactable-specific fields to your model. " +
       "The NAME argument is the name of your model"

  def self.source_root
    @source_root ||= File.expand_path('../templates', __FILE__)
  end

  def generate_migration
    copy_migration "contactable_migration.rb.erb", "add_allport_contact_to_#{name.underscore.pluralize}"
  end
end
