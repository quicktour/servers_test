class Ip::FindService < ApplicationService
  def initialize(ip_body)
    @ip_body = ip_body
  end

  def call
    Ip.find(body: @ip_body)
  end
end
