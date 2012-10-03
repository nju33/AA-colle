class TopController < ApplicationController
  def index
    @asciiArts = Aa.order("created_at desc")
    #aa_id = @asciiArts.id
    #@tags = @asciiArts.tags.where(aa_id: aa_id)

    respond_to do |format|
      format.html
      format.json{ render json: @aas }
    end
  end
end
