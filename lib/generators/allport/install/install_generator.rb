require_relative '../generator_helper.rb'
require 'rails/generators/active_record/migration'

class Allport::InstallGenerator < Rails::Generators::Base
  include Allport::GeneratorHelper
  include ActiveRecord::Generators::Migration

  def self.source_root
    @source_root ||= File.expand_path('../templates', __FILE__)
  end

  def generate_migration
    copy_migration "contact_card_migration.rb.erb", "create_allport_contact_cards"
  end
end
