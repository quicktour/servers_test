class IpController < BaseController
  def index
    content = Ip::ListService.call
    render content
  end

  def create
    content = Ip::CreateService.call(@params)
    render content
  end

  def delete
    content = Ip::DeleteService.call(@params)
    render content
  end
end
