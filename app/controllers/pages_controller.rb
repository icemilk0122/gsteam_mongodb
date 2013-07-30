class PagesController < ApplicationController
  #before_action :set_proof, only: [:prooflist]
  def index
    @photourl = "https://dl.dropboxusercontent.com/u/9581754/contenttimeline/photos/"
  end
  def proof
    unless current_user then
      redirect_to root_path
    end
    @photourl = "https://dl.dropboxusercontent.com/u/9581754/contenttimeline/photos/"  
  end
  def list
    @proofs = Proof.find_by cate: params[:cateid]
    respond_to do |format|
      format.json { render json: @proofs }
    end
  end
  def player
    @videoid = params[:videoid]
  end
end
