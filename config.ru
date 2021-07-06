require 'rubygems'
require 'bundler'
Bundler.require

require "./app"
require "./initializers/autoloader.rb"

run App.new