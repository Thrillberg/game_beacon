class UsersController < ApplicationController
  # respond_to :json

  def create
    @user = User.create(user_params)
    respond_to do |format|
      format.json { render :json => @user }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
