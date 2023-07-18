class ArtistWorksController < ApplicationController
  before_action :set_artist_work, only: %i[ show update destroy ]

  # GET /artist_works
  def index
    @artist_works = ArtistWork.all

    render json: @artist_works
  end

  # GET /artist_works/1
  def show
    render json: @artist_work
  end

  # POST /artist_works
  def create
    @artist_work = ArtistWork.new(artist_work_params)

    if @artist_work.save
      render json: @artist_work, status: :created, location: @artist_work
    else
      render json: @artist_work.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /artist_works/1
  def update
    if @artist_work.update(artist_work_params)
      render json: @artist_work
    else
      render json: @artist_work.errors, status: :unprocessable_entity
    end
  end

  # DELETE /artist_works/1
  def destroy
    @artist_work.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_work
      @artist_work = ArtistWork.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artist_work_params
      params.require(:artist_work).permit(:work_type, :work_title, :year, :ownership_status, :description)
    end
end
