class UsersController < ApplicationController

  def edit
  end

  def update
    private

    def user_params
      params.require(:user).permit(:name, :email)
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
