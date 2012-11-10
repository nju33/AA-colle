class TopController < ApplicationController
  skip_before_filter :authorize

  def index
    @asciiArts = Aa.page(params[:page]).per(13)

    respond_to do |format|
      format.html
      format.json{ render json: @aas }
    end
  end
end
