# frozen_string_literal: true

class ApplicationController < ActionController::API
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    return if logged_in?

    unauthorized
  end

  def current_user_can_modify(id)
    current_user.id == id
  end

  def unauthorized
    head :forbidden
  end
end
