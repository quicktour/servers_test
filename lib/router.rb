class Router
  def initialize()
  end

  def resolve(env)
    "#{env['REQUEST_METHOD']}##{env['REQUEST_PATH']}"
  end
end