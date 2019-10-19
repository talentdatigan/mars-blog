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
