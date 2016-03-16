require 'rails/generators/active_record'

class Allport::Generator < ActiveRecord::Generators::Base

  protected

  def copy_migration(migration, filename)
    if self.class.migration_exists?("db/migrate", "#{filename}")
      say_status("skipped", "Migration #{filename}.rb already exists")
    else
      migration_template migration, "db/migrate/#{filename}.rb"
    end
  end
end