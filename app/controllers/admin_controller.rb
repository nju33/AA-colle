class AdminController < ApplicationController
  def index
    if session[:user_id]
      if session[:omniflag]
        @user = Omniuser.find(session[:user_id])
      else
        @user = User.find(session[:user_id])
      end
      session[:omniflag] = nil
      
      @asciiArts = Aa.page(params[:page]).per(13).where(user_id: session[:user_id]).order("created_at desc")
    end
  end
end
