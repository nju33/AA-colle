class TopController < ApplicationController
  skip_before_filter :authorize

  def index
    @asciiArts = Aa.paginate page: params[:page], order: 'created_at desc', per_page: 13
    @popularTags = Tag.select('tag, COUNT(*)').group('tag').having('COUNT(*) >= 10')
    @randomTags = Tag.select('tag, COUNT(*)').group('tag').order('RANDOM()').limit(10)

    respond_to do |format|
      format.html
      format.json{ render json: @aas }
    end
  end
end
