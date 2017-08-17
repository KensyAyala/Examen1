class MyPlanetsController < ApplicationController
  before_action :set_my_planet, only: [:show, :edit, :update, :destroy]

  # GET /my_planets
  # GET /my_planets.json
  def index
    @my_planets = MyPlanet.all
  end

  # GET /my_planets/1
  # GET /my_planets/1.json
  def show
  end

  # GET /my_planets/new
  def new
    @my_planet = MyPlanet.new
  end

  # GET /my_planets/1/edit
  def edit
  end

  # POST /my_planets
  # POST /my_planets.json
  def create
    @my_planet = MyPlanet.new(my_planet_params)

    respond_to do |format|
      if @my_planet.save
        format.html { redirect_to @my_planet, notice: 'My planet was successfully created.' }
        format.json { render :show, status: :created, location: @my_planet }
      else
        format.html { render :new }
        format.json { render json: @my_planet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_planets/1
  # PATCH/PUT /my_planets/1.json
  def update
    respond_to do |format|
      if @my_planet.update(my_planet_params)
        format.html { redirect_to @my_planet, notice: 'My planet was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_planet }
      else
        format.html { render :edit }
        format.json { render json: @my_planet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_planets/1
  # DELETE /my_planets/1.json
  def destroy
    @my_planet.destroy
    respond_to do |format|
      format.html { redirect_to my_planets_url, notice: 'My planet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_planet
      @my_planet = MyPlanet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_planet_params
      params.require(:my_planet).permit(:name_planet, :radius, :description)
    end
end
