class UsersController < ApplicationController

  def edit
  end

  def update
    current_user.update(user_params)
  end


  
end
