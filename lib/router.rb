ROUTES = YAML.load(File.read(File.join(File.dirname(__FILE__), "../config", "routes.yml")))

class Router
  attr_reader :routes

  def initialize()
    @routes ||= ROUTES
  end

  def resolve(env)
    key = "#{env['REQUEST_METHOD']}##{env['REQUEST_PATH']}"
    if routes.has_key?(key)
      controller(routes[key]).call
    else
      BaseController.new.not_found
    end
  rescue Exception => error
    BaseController.new.internal_error(error.message, error.backtrace)
  end

  private 
  
  def controller(string)
    controller_name, action_name = string.split('#')
    klass = Object.const_get "#{controller_name.capitalize}Controller"
    klass.new(name: controller_name, action: action_name.to_sym)
  end
end