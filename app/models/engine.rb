class Engine < ApplicationRecord
	validates :name, :model, :astronauts, presence: true
	enum model: {
    'Falcon' => 'Falcon',
    'Scout' => 'Scout',
    'MG-010' => 'MG-010',
    'Minotaur' => 'Minotaur'
}
end
