require 'test_helper'
require 'generators/allport/admin/rails_admin/rails_admin_generator'

module Allport
  class Allport::Admin::RailsAdminGeneratorTest < Rails::Generators::TestCase
    tests Allport::Admin::RailsAdminGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
