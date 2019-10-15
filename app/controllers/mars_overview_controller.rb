class MarsOverviewController < ApplicationController
	def index

	end

	def mars_weather
		
		weather = Weather.all
		@MinTemp = []
		weather.each do |temp|
			@MinTemp << temp.minTemp
		end


	end

	def insight_mission

	end

	
end
