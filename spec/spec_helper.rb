$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'bitbroker'
require 'securerandom'
require 'fileutils'

MQCONFIG = {
  'host' => 'localhost',
  'user' => 'guest',
  'vhost' => '/',
  'passwd' => 'guest',
}

Dir.glob("spec/steps/**/*steps.rb") { |f| load f, true }

RSpec.configure do |config|
  config.after(:type => :feature) do
    ## some after processing
  end
end
