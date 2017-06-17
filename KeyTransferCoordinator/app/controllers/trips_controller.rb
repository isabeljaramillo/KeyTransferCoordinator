class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  # GET /trips
  # GET /trips.json
  def index
    @trips = Trip.all
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
  end

  # GET /trips/new
  def new
    @trip = Trip.new
  end

  # GET /trips/1/edit
  def edit
  end

  # POST /search
  def search
    @search_origin = params[:origin]
    @search_destination = params[:destination] 
    @results = Trip.where(["origin = ? and destination = ?", search_origin, search_destination])
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)

    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render :show, status: :created, location: @trip }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'Trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:origin, :destination, :IGN)
    end

    def OneLeg
      @OneLeg = Trip.where(["origin = ? and destination = ?", @search_origin, @search_destination])
    end

    def TwoLeg
      B1 = []
      B1 =Trip.where(["origin = ?", @search_origin])
      B2 =Trip.where(["destination = ?", @search_destination])
      @Leg1 = []
      @Leg2 = []
      x = 0
      y = 0
      while x < B1.count
        while y < B2.count
          if B1[x].destination == B2[y].origin
            @TwoLeg1.push(B1[x])
            @TwoLeg2.push(B2[y])
          end
        y += 1
        end
      y = 0
      x += 1
      end
    end
end
