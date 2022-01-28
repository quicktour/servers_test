class Ip::CreateService < ApplicationService
  def initialize(params)
    @params = params
  end

  def call
    resource = Ip.create(@params)
    response_template(resource)
  end

  private

  def response_template(resource)
    {
      id: resource.id,
      body: resource.body
    }
  end
end
