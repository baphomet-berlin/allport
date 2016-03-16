require 'test_helper'
require 'generators/allport/contact/contact_generator'

module Allport
  class Allport::ContactGeneratorTest < Rails::Generators::TestCase
    tests Allport::ContactGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
