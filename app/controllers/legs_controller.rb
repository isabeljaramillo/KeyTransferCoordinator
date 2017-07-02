class LegsController < ApplicationController
  before_action :set_leg, only: [:show, :edit, :update, :destroy]
  
  def index
    @legs = Leg.all
  end
  
  def new
    @leg = Leg.new
  end
  
  def show
  end
  
  def edit
  end
  
  def create
    @leg = Leg.new(trip_params)
    @leg.uid = current_trip
    @leg.email = current_trip

    respond_to do |format|
      if @leg.save
        format.html { redirect_to @leg, notice: 'trip info was successfully created.' }
        format.json { render :show, status: :created, location: @leg }
      else
        format.html { render :new }
        format.json { render json: @leg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    respond_to do |format|
      if @leg.update(trip_params)
        format.html { redirect_to @leg, notice: 'leg was successfully updated.' }
        format.json { render :show, status: :ok, location: @leg }
      else
        format.html { render :edit }
        format.json { render json: @legs.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @leg.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'leg info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leg
      @leg = Leg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:leg).permit(:name, :email)
    end
end
