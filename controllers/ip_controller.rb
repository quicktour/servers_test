class IpController < BaseController
  def index
    content = { "message": "it list" }
    render content
  end

  def create
    content = { "message": "it create" }
    render content
  end

  def delete
    content = { "message": "it delete" }
    render content
  end
end