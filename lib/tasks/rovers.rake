namespace :rovers do
  desc "TODO"
  task seed_rovers: :environment do
  	5.times do |index|
  		Rover.create!(name:Faker::Coffee.blend_name,
  			model:Rover.models.keys[rand(4)],
  			purpose:Rover.purposes.keys[rand(4)])
  	end

  end

end
