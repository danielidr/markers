class MarkersController < ApplicationController
  before_action :set_marker, only: %i[ show edit update destroy ]
  before_action :set_type, only: %i[edit new create]
  before_action :set_category, only: %i[edit new create]

  # GET /markers or /markers.json
  def index
    @markers = Marker.all
  end

  # GET /markers/1 or /markers/1.json
  def show
  end

  # GET /markers/new
  def new
    @marker = Marker.new
  end

  # GET /markers/1/edit
  def edit
  end

  # POST /markers or /markers.json
  def create
    @marker = Marker.new(marker_params)
    unless @marker.save
      render json: @marker.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /markers/1 or /markers/1.json
  def update
    respond_to do |format|
      if @marker.update(marker_params)
        format.html { redirect_to @marker, notice: "Marker was successfully updated." }
        format.json { render :show, status: :ok, location: @marker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @marker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /markers/1 or /markers/1.json
  def destroy
    @marker.destroy
    respond_to do |format|
      format.html { redirect_to markers_url, notice: "Marker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marker
      @marker = Marker.find(params[:id])
    end

    def set_type
      @types = Type.pluck :name, :id
    end

    def set_category
      @categories = Category.pluck :name, :id
    end

    # Only allow a list of trusted parameters through.
    def marker_params
      params.require(:marker).permit(:name, :url, :type_id, :category_id )
    end
end
