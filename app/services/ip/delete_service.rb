class Ip::DeleteService < ApplicationService
  def initialize(params)
    @params = params
  end

  def call
    Ip.find(body: @params['body']).delete
    build_response
  end

  private

  def build_response
    { message: 'ok' }
  end
end