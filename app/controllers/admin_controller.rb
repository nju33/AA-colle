class AdminController < ApplicationController
  def index
    if session[:user_id]
      @user = User.find(session[:user_id])

       @asciiArts = Aa.paginate page: params[:page], order: 'created_at desc', per_page: 13
      @popularTags = Tag.select('tag, COUNT(*)').group('tag').having('COUNT(*) >= 10')
      @randomTags = Tag.select('tag, COUNT(*)').group('tag').order('RANDOM()').limit(10)

    end
  end
end
