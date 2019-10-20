class WeathersController < ApplicationController
  before_action :set_weather, only: [:show, :edit, :update, :destroy]

  # GET /weathers
  # GET /weathers.json
  def index
    @weathers = Weather.all
    @years = @weathers.distinct.pluck(:year)
    @months = (@weathers.distinct.pluck(:month)).sort

    if params[:commit] =="Go!"
      redirect_to mars_overview_display_path(year: params[:search_year], month: params[:search_month]), :target => '_blank'
    end

  end

  # GET /weathers/1
  # GET /weathers/1.json
  def show
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weather
      begin
      @weather = Weather.find(params[:id])
      rescue
      redirect_to '/*a'
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weather_params
      params.require(:weather).permit(:day, :month, :year, :solstice, :minTemp, :maxTemp)
    end
end
