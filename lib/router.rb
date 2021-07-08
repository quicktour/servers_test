class Router
  attr_reader :routes

  def initialize()
    @routes ||= ConfigLoader.routes
  end

  def resolve(env)
    key = "#{env['REQUEST_METHOD']}##{env['REQUEST_PATH']}"
    params = get_params(env)
    if routes.has_key?(key)
      controller(routes[key], params).call
    else
      BaseController.new.not_found
    end
  rescue Exception => error
    BaseController.new.internal_error(error.message, error.backtrace)
  end

  private 
  
  def controller(string, params)
    controller_name, action_name = string.split('#')
    klass = Object.const_get "#{controller_name.capitalize}Controller"
    klass.new(name: controller_name, action: action_name.to_sym, params: params)
  end

  def get_params(env)
    request = Rack::Request.new(env)
    params  = request.body.read
    return if params.empty?

    JSON.parse(params)
  end
end
