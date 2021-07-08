class Ip::ListService < ApplicationService
  def call
    build_response(Ip.all)
  end

  private

  def build_response(data)
    data.map { |i| response_template(i) }
  end

  def response_template(data)
    {
      id: data.id,
      body: data.body
    }
  end
end
