class ApiController < ApplicationController
  include Knock::Authenticable
  
  skip_before_action :verify_authenticity_token

  before_action :authenticate_user
  before_action :set_default_format

  private
  def set_default_format
    request.format = :json
  end
end