#encoding: utf-8

class ApplicationController < ActionController::Base
  before_filter :authorize
  before_filter :aside_tags
  protect_from_forgery

  private
    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to login_path, notice: 'ログインしてください'
      end
    end

    def aside_tags
      @popularTags = Tag.select('tag, COUNT(*)').group('tag').having('COUNT(*) >= 10').order('RANDOM()').limit(30)
      @randomTags = Tag.select('tag, COUNT(*)').group('tag').order('RANDOM()').limit(30)
    end
end
