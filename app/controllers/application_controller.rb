class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  def current_user
    return nil unless session[:session_token]

    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def ensure_logged_in
    return if logged_in?

    redirect_to new_session_url
    render :json ['Must be logged in for that.'], status: 401
  end

  def login(user)
    @current_user = user
    session[:session_token] = @current_user.reset_session_token!
  end

  def logout
    current_user.reset_session_token!
    session[:session_token] = nil
  end

  def logged_in?
    !!current_user
  end
end
