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
      puts "New Month"
      totalMin = 0
      totalMax = 0
      dayCounter = 0
      currentMonth = index[0].month

  		index.each do |i|
				puts i.month
        dayCounter += 1
        totalMin += i.minTemp.to_i
        totalMax += i.maxTemp.to_i
      end

  	MonthlyWeather.create!(
  		month: currentMonth.to_s,
  		minTemp: totalMin/dayCounter.to_f,
  		maxTemp: totalMax/dayCounter.to_f
  		)

  end

  end

end
