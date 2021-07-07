require 'rubygems'
require 'bundler'
Bundler.require

require 'json'
require 'yaml'
require "./app"
require "./initializers/autoloader.rb"

Rack::Handler.default.run(App.new, :Port => 3000)