require "datadog_downtime/set_downtime.rb"
require "datadog_downtime/set_downtime.rb"
require 'rubygems'
require 'dogapi'

module DatadogDowntime
  def self.exec
    set_downtime()
  end
end
