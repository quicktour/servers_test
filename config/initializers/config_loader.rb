class ConfigLoader
  class << self
    def routes
      load_file('../', 'routes')
    end

    def db_config
      load_file('../', 'database')
    end

    private

    def load_file(path, file_name)
      YAML.load(File.read(File.join(File.dirname(__FILE__), path, "#{file_name}.yml")))
    end
  end
end
