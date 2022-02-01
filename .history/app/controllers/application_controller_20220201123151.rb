class ApplicationController < ActionController::Base
  before_action :authenticate_user

  def user_params
    params.permit(:name)
  end
end
