require 'csv'
namespace :weather_data do
  desc "TODO"
  task seed_weatherData: :environment do
    Weather.destroy_all

    CSV.foreach("lib/assets/processedData.csv", :headers =>true) do |row|
      puts row.inspect
      Weather.create!(
                 day: row[0].to_i,
                 month:row[1].to_i,
                 year: row[2].to_i,
                 minTemp: row[3].to_i,
                 maxTemp: row[4].to_i
      )
    end

  end

end
