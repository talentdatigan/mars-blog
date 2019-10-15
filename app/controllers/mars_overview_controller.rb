class MarsOverviewController < ApplicationController
	def index

	end

	def mars_weather

		weather = MonthlyWeather.all
		@MinTemps = []
		@MaxTemps = []
		weather.each do |temp|
			@MinTemps << temp.minTemp
			@MaxTemps << temp.maxTempgit
		end

	end

	def insight_mission

	end

	
end
