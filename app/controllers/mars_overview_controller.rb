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

		if params[:year] == nil
			redirect_to mars_overview_mars_weather_path
		end

		@year = params[:year].to_i
		@month = params[:month].to_i

		@weatherdata = []
		data = Weather.all
		data.each do |index|
			if index.year == @year and index.month == @month
				puts "HERE"
				@weatherdata << index
			end
		end

	end

end
