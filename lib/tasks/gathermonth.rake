namespace :gathermonth do
  desc "TODO"
  task seed_gathermonth: :environment do

 	MonthlyWeather.destroy_all

  	allweather = Weather.all
  	yearweather = []

  	allweather.each do |index|
  		if index.year == 2018
  			yearweather << index
  		end
  	end

  	allweather = nil
  	singleyearweather = [[],[],[],[],[],[],[],[],[],[],[],[]]

  	yearweather.each do |index|
  		singleyearweather[index.month - 1] << index
  	end

  	yearweather = nil

  	singleyearweather.each do |index|
  		index.each do |i|
  		puts i.month
  	MonthlyWeather.create!(
  		month: i.month.to_s,
  		minTemp: i.minTemp.to_i,
  		maxTemp:i.maxTemp.to_i
  		)
  end
  end

  end

end
