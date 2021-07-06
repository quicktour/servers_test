class App
  attr_reader :router

  def initialize
    @router = Router.new
  end

  def call(env)
    response = router.resolve(env)
    [200, {}, [response]]
  end
end