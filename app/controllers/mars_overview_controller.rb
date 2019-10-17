class MarsOverviewController < ApplicationController
	def index

	end

	def mars_weather

		weather = MonthlyWeather.all
		@MinTemps = []
		@MaxTemps = []
		weather.each do |temp|
			@MinTemps << temp.minTemp
			@MaxTemps << temp.maxTemp
		end

	end

	def insight_mission

	end

	def display
		@year = params[:year]
		@month = params[:month]
	end

end
