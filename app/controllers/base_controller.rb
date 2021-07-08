class BaseController
  attr_reader :name, :action, :params
  attr_accessor :status, :headers, :content

  def initialize(name: nil, action: nil, params: nil)
    @name = name
    @action = action
    @params = params
  end

  def call
    send(action)
    self.status = 200
    self.headers = {"Content-Type" => "application/json"}
    self
  end

  def not_found
    self.status = 404
    self.headers = {"Content-Type" => "application/json"}
    content = { "message": "Nothing found" }
    render content
    self
  end

  def internal_error(message, backtrace)
    self.status = 500
    self.headers = {"Content-Type" => "application/json"}
    content = { "message": message, "backtrace": backtrace }
    render content
    self
  end

  private

  def render(body)
    self.content = body.to_json
  end
end
