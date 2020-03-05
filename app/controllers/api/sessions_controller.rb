class Api::SessionsController < ApplicationController

  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])

    if @user
      login(@user)
      flash[:success] = "Logged in Successfully!"
      render "api/users/show"
    else
      render json: ["Invalid username or password."], status: 401
    end
  end

  def destroy
    logout
    render json: { message: "Logged out Successfully!" }
  end
end