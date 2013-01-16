#encoding: utf-8

class ApplicationController < ActionController::Base
  before_filter :authorize
  before_filter :user
  protect_from_forgery

  private
    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to root_path, notice: '先にログインしてください。'
      end
    end

    def user
      if session[:user_id]
        @user = User.find_by_id(session[:user_id])
      end
    end
end
