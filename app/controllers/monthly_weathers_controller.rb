class MonthlyWeathersController < ApplicationController
  before_action :set_monthly_weather, only: [:show, :edit, :update, :destroy]

  # GET /monthly_weathers
  # GET /monthly_weathers.json
  def index
    @monthly_weathers = MonthlyWeather.all
  end

  # GET /monthly_weathers/1
  # GET /monthly_weathers/1.json
  def show
  end

  # GET /monthly_weathers/new
  def new
    @monthly_weather = MonthlyWeather.new
  end

  # GET /monthly_weathers/1/edit
  def edit
  end

  # POST /monthly_weathers
  # POST /monthly_weathers.json
  def create
    @monthly_weather = MonthlyWeather.new(monthly_weather_params)

    respond_to do |format|
      if @monthly_weather.save
        format.html { redirect_to @monthly_weather, notice: 'Monthly weather was successfully created.' }
        format.json { render :show, status: :created, location: @monthly_weather }
      else
        format.html { render :new }
        format.json { render json: @monthly_weather.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monthly_weathers/1
  # PATCH/PUT /monthly_weathers/1.json
  def update
    respond_to do |format|
      if @monthly_weather.update(monthly_weather_params)
        format.html { redirect_to @monthly_weather, notice: 'Monthly weather was successfully updated.' }
        format.json { render :show, status: :ok, location: @monthly_weather }
      else
        format.html { render :edit }
        format.json { render json: @monthly_weather.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monthly_weathers/1
  # DELETE /monthly_weathers/1.json
  def destroy
    @monthly_weather.destroy
    respond_to do |format|
      format.html { redirect_to monthly_weathers_url, notice: 'Monthly weather was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_monthly_weather
    @monthly_weather = MonthlyWeather.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def monthly_weather_params
    params.require(:monthly_weather).permit(:month, :minTemp, :maxTemp)
  end
end
