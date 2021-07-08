require 'singleton'

class Database
  include Singleton
  attr_reader :connection

  def initialize
    @connection = Sequel.connect("#{ConfigLoader.db_config['url']}")
  end
end