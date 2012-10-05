class TopController < ApplicationController
  def index
    @asciiArts = Aa.order("created_at desc")
    #user_id = Aa.order("created_at desc").select('user_id')
    #@users = User.where(id: user_id)

    respond_to do |format|
      format.html
      format.json{ render json: @aas }
    end
  end
end
