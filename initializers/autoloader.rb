paths = %w[/lib/*.rb].map(&:freeze).freeze

paths.each do |path|
  Dir[File.join('./', path)].each do |file|
    next if file.include?('initializers/autoloader') # skip me
    require file
  end
end