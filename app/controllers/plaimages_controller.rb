class PlaimagesController < ApplicationController
  before_action :set_plaimage, only: [:show, :edit, :update, :destroy]

  # GET /plaimages
  # GET /plaimages.json
  def index
    @plaimages = Plaimage.all
  end

  # GET /plaimages/1
  # GET /plaimages/1.json
  def show
  end
  
  def visualize
    @plaimages = Plaimage.all
    @hash = Gmaps4rails.build_markers(@plaimages) do |plaimage, marker|
      marker.lat plaimage.longitude
      marker.lng plaimage.latitude
    end
  end


  # GET /plaimages/new
  def new
    @plaimage = Plaimage.new
  end

  # GET /plaimages/1/edit
  def edit
  end

  # POST /plaimages
  # POST /plaimages.json
  def create
    @plaimage = Plaimage.new(plaimage_params)

    respond_to do |format|
      if @plaimage.save
        format.html { redirect_to @plaimage, notice: 'Plaimage was successfully created.' }
        format.json { render :show, status: :created, location: @plaimage }
      else
        format.html { render :new }
        format.json { render json: @plaimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plaimages/1
  # PATCH/PUT /plaimages/1.json
  def update
    respond_to do |format|
      if @plaimage.update(plaimage_params)
        format.html { redirect_to @plaimage, notice: 'Plaimage was successfully updated.' }
        format.json { render :show, status: :ok, location: @plaimage }
      else
        format.html { render :edit }
        format.json { render json: @plaimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plaimages/1
  # DELETE /plaimages/1.json
  def destroy
    @plaimage.destroy
    respond_to do |format|
      format.html { redirect_to plaimages_url, notice: 'Plaimage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plaimage
      @plaimage = Plaimage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plaimage_params
      params.require(:plaimage).permit(:latitude, :longitude, :description, :comment, :image)
    end
end
