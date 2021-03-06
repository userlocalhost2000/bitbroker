require "bitbroker/version"
require 'bitbroker/solvant'
require 'bitbroker/observer'
require 'bitbroker/broker'
require 'bitbroker/metadata'
require 'bitbroker/manager'
require 'bitbroker/manager_impl'
require 'bitbroker/config'
require 'bitbroker/log'
require 'bitbroker/progress'

module Bitbroker
  def self.version
    VERSION
  end
end
