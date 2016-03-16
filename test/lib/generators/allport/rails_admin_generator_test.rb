require 'test_helper'
require 'generators/allport/rails_admin/rails_admin_generator'

module Allport
  class RailsAdminGeneratorTest < Rails::Generators::TestCase
    tests RailsAdminGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    test "generator runs without errors" do
      assert_nothing_raised do
        run_generator ["arguments"]
      end
    end
  end
end
