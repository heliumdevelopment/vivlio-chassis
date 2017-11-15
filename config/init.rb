# require File.expand_path('config/environment', File.dirname(__FILE__)) -> not sure we need this

require 'rubygems'
require 'bundler'
Bundler.require

# Local config
require 'find'

ENV = Sinatra::Base.environment.to_s

#load initializers and lib
%w{config/initializers lib}.each do |load_path|
  Find.find(load_path) do |f|
    require f unless f.match(/\/\..+$/) || File.directory?(f)
  end
end

# Protection against several web-based attacks - needs configuring
# require 'rack/protection'
# use Rack::Protection

