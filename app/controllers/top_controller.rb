class TopController < ApplicationController
  skip_before_filter :authorize

  def index
    @asciiArts = Aa.paginate page: params[:page], order: 'created_at desc', per_page: 8
    #@popularTags = Tag.find(:all, where: 'COUNT(tag) >= 10', limit: 10)
    #@randomTags = Tag.find(:all, group: 'tag', order: 'RANDOM()', limit: 10)

    respond_to do |format|
      format.html
      format.json{ render json: @aas }
    end
  end
end
