# This calls the main test_helper in Foreman-core

require 'simplecov'

SimpleCov.start do
  add_filter '/test/'
  add_group 'App', 'app'
  add_group 'Lib', 'lib'
end

require 'test_helper'

# Add plugin to FactoryBot's paths
FactoryBot.definition_file_paths << File.join(File.dirname(__FILE__), 'factories')
FactoryBot.reload
