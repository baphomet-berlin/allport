require 'rails/generators/active_record'

class Allport::Generator < ActiveRecord::Generators::Base

  protected

  def copy_migration(migration, migration_name)
    if self.class.migration_exists?("db/migrate", "#{migration_name}")
      say_status("skipped", "Migration #{migration_name}.rb already exists")
    else
      migration_template migration, "db/migrate/#{migration_name}.rb"
    end
  end
end