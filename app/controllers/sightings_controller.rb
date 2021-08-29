class SightingsController < ApplicationController
  before_action :set_sighting, only: %i[ show edit update destroy ]

  # GET /sightings or /sightings.json
  def index
    @sightings = Sighting.all
    render json: @sightings
  end

  # GET /sightings/1 or /sightings/1.json
  def show
    render json: @sighting
  end

  # GET /sightings/new
  def new
    @sighting = Sighting.new
  end

  # GET /sightings/1/edit
  def edit
    render json: @sighting
  end

  # POST /sightings or /sightings.json
  def create
    @sighting = Sighting.new(sighting_params)

   if @sighting.save
    render json: @sighting, status: :created, location: @sighting
   else
    render json: @sighting.errors, status: :unprocessable_entity
   end
  end

  # PATCH/PUT /sightings/1 or /sightings/1.json
  def update
      if @sighting.update(sighting_params)
        render json: @sighting
      else
        render json: @sighting.errors, status: :unprocessable_entity
      end
    end

  # DELETE /sightings/1 or /sightings/1.json
  def destroy
    @sighting.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sighting
      @sighting = Sighting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sighting_params
      params.require(:sighting).permit(:comment, :location, :date, :size, :user_id)
    end
end
