class JsonController < ApplicationController
  def index
    render json: { message: 'hello world', data: { id: '123', attributes: { email: 'test@example.com' } } }
  end
end
