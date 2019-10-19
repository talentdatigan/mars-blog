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
			puts "HERE 4"
			params[:commit] = nil
			params[:year] = params[:search_year]
			params[:month] = params[:search_month]

			#redirect_to mars_overview_display_path(year: params[:search_year], month: params[:search_month]), :target => '_blank'
			# display?month=1&year=2019
			#link_to "Show more results", url_for(year: params[:search_year], month: params[:search_month])
		end

		puts "HERE 1"
		if params[:year] == nil
			puts "HERE 2"
			redirect_to mars_overview_mars_weather_path
		end

		puts "HERE 3"
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
