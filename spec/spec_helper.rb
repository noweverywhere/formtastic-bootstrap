require 'bundler/setup'
require 'pry'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

# Find Formtastic and grab its testing support first.
formtastic_full_gem_path = Bundler.load.specs.find{|s| s.name == "formtastic" }.full_gem_path
require File.join(formtastic_full_gem_path, 'spec', 'spec_helper.rb')

# Now add in ours.
require 'fortastic_rebootstrap'
Dir[File.join(File.dirname(__FILE__), "support", "**/*.rb")].each { |f| require f }

RSpec.configure do |config|
  config.before(:each) do
    Formtastic::Helpers::FormHelper.builder = FormtasticRebootstrap::FormBuilder
  end
  config.include FbCustomMacros

  config.mock_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end
