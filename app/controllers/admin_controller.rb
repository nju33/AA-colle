class AdminController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find(session[:user_id])

      @asciiArts = Aa.page(params[:page]).per(13).where(user_id: session[:user_id]).order("updated_at desc")
    end
  end
end
