class PfcatesController < ApplicationController
  before_action :set_pfcate, only: [:show, :edit, :update, :destroy]

  # GET /pfcates
  # GET /pfcates.json
  def index
    @pfcates = Pfcate.all
  end

  # GET /pfcates/1
  # GET /pfcates/1.json
  def show
  end

  # GET /pfcates/new
  def new
    @pfcate = Pfcate.new
  end

  # GET /pfcates/1/edit
  def edit
  end

  # POST /pfcates
  # POST /pfcates.json
  def create
    @pfcate = Pfcate.new(pfcate_params)

    respond_to do |format|
      if @pfcate.save
        format.html { redirect_to @pfcate, notice: 'Pfcate was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pfcate }
      else
        format.html { render action: 'new' }
        format.json { render json: @pfcate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pfcates/1
  # PATCH/PUT /pfcates/1.json
  def update
    respond_to do |format|
      if @pfcate.update(pfcate_params)
        format.html { redirect_to @pfcate, notice: 'Pfcate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pfcate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pfcates/1
  # DELETE /pfcates/1.json
  def destroy
    @pfcate.destroy
    respond_to do |format|
      format.html { redirect_to pfcates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pfcate
      @pfcate = Pfcate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pfcate_params
      params.require(:pfcate).permit(:id, :name, :note)
    end
end
