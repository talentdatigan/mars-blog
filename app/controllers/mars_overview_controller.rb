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

		if params[:commit] == "Run Again!"
			params[:commit] = nil
			params[:year] = params[:search_year]
			params[:month] = params[:search_month]

		end

		if params[:year] == nil
			redirect_to mars_overview_mars_weather_path
		end

		@year = params[:year].to_i
		@month = params[:month].to_i

		@weatherdata = []
		data = Weather.all
		data.each do |index|
			if index.year == @year and index.month == @month
				@weatherdata << index
			end
		end

		@weathers = Weather.all
		@years = @weathers.distinct.pluck(:year)
		@months = (@weathers.distinct.pluck(:month)).sort


	end

end
