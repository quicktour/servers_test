paths = %w[/lib/*.rb
           /config/initializers/*.rb
           /app/controllers/base_controller.rb
           /app/controllers/*.rb
          ].map(&:freeze).freeze

paths.each do |path|
  Dir[File.join(App.root, path)].each do |file|
    next if file.include?('config/initializers/autoloader')
    require file
  end
end
