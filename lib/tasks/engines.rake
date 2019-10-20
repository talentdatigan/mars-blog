namespace :engines do
  desc "TODO"
  task seed_engines: :environment do
  	5.times do |index|
  		Engine.create!(name:Faker::Coffee.blend_name,
  			model:Engine.models.keys[rand(4)],
  			astronauts:rand(10))
  	end
  end

end
