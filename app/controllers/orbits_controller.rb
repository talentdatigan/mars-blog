class OrbitsController < ApplicationController
  before_action :set_orbit, only: [:show, :edit, :update, :destroy]


  # GET /orbits
  # GET /orbits.json
  def index
    @orbits = Orbit.all
    @count = 0
    @orbits.each do |orbit|
      @count += 1
    
    end

  end

  # GET /orbits/1
  # GET /orbits/1.json
  def show
  end

  # GET /orbits/new
  def new
    @orbit = Orbit.new
    @engines = Engine.all
  end

  # GET /orbits/1/edit
  def edit
  end

  # POST /orbits
  # POST /orbits.json
  def create
    @orbit = Orbit.new(orbit_params)

    respond_to do |format|
      if @orbit.save
        format.html { redirect_to @orbit, notice: 'Orbit was successfully created.' }
        format.json { render :show, status: :created, location: @orbit }
      else
        format.html { render :new }
        format.json { render json: @orbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orbits/1
  # PATCH/PUT /orbits/1.json
  def update
    respond_to do |format|
      if @orbit.update(orbit_params)
        format.html { redirect_to @orbit, notice: 'Orbit was successfully updated.' }
        format.json { render :show, status: :ok, location: @orbit }
      else
        format.html { render :edit }
        format.json { render json: @orbit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orbits/1
  # DELETE /orbits/1.json
  def destroy
    @orbit.destroy
    respond_to do |format|
      format.html { redirect_to orbits_url, notice: 'Orbit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orbit
      @orbit = Orbit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orbit_params
      params.require(:orbit).permit(:name, :form, :height, :engine_id)
    end
end
