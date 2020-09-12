class FaveVidsController < ApplicationController
  before_action :set_fave_vid, only: [:show, :update, :destroy]

  # GET /fave_vids
  def index
    @fave_vids = FaveVid.all

    render json: @fave_vids
  end

  # GET /fave_vids/1
  def show
    render json: @fave_vid
  end

  # POST /fave_vids
  def create
    @fave_vid = FaveVid.new(fave_vid_params)

    if @fave_vid.save
      render json: @fave_vid, status: :created, location: @fave_vid
    else
      render json: @fave_vid.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fave_vids/1
  def update
    if @fave_vid.update(fave_vid_params)
      render json: @fave_vid
    else
      render json: @fave_vid.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fave_vids/1
  def destroy
    @fave_vid.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fave_vid
      @fave_vid = FaveVid.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fave_vid_params
      params.require(:fave_vid).permit(:url, :title)
    end
end
