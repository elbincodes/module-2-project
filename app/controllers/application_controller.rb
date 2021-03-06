class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user, except: [:welcome]

  def current_user
    @user = User.find_by(id: session[:user_id]) || User.new
  end

  def logged_in?
    current_user.id != nil
  end

  def require_login
    return redirect_to '/login' unless logged_in?
  end

end
