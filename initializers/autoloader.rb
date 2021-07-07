paths = %w[/lib/*.rb
           /controllers/base_controller.rb
           /controllers/*.rb
          ].map(&:freeze).freeze

paths.each do |path|
  Dir[File.join(App.root, path)].each do |file|
    next if file.include?('initializers/autoloader') # skip me
    require file
  end
end