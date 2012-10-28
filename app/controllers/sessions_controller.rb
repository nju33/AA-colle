#encoding: utf-8

class SessionsController < ApplicationController
  skip_before_filter :authorize

  def new
  end

  def create
    user = User.find_by_name(params[:email])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_index_path
    else
      redirect_to login_path, alret: '登録されていないユーザ名またはパスワードです'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'ログアウトしました'
  end
end
