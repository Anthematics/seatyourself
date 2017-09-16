class ApplicationController < ActionController::Base

protect_from_forgery with: :exception


 private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

helper_method :current_user

  def ensure_logged_in
    unless current_user
      flash[:alert] ="Please Login"
      redirect_to new_session_url
    end
  end

  def ensure_user_owns_restaurant
   unless current_user == @restaurant.user
     flash[:alert] = "You are not the owner !!"
     redirect_to new_session_url
   end
  end


end
