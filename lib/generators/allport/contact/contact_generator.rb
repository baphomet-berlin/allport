require_relative '../generator.rb'

class Allport::ContactGenerator < Allport::Generator

  desc "Create a migration to add contactable-specific fields to your model. " +
       "The NAME argument is the name of your model"

  def self.source_root
    @source_root ||= File.expand_path('../templates', __FILE__)
  end

  def generate_migration
    copy_migration "contactable_migration.rb.erb", "#{migration_file_name}"
  end

  def migration_name
    "add_allport_contact_to_#{name.underscore.pluralize}"
  end

  def migration_file_name
    "#{migration_name}.rb"
  end
end
