class Rover < ApplicationRecord
	validates :name, :model, :purpose, presence: true
	enum model: {
    'Soujouner Pathfinder' => 'Soujouner Pathfinder',
    'Spirit & Opportunity' => 'Spirit & Opportunity',
    'Mars 2020' => 'Mars 2020',
    'Curiosity' => 'Curiosity',
  
  }
  	enum purpose: {
  		'life suitability' =>  	'life suitability',
  		'analyse ecosystem' => 'analyse ecosystem',
  		'analyse atmosphere' => 'analyse atmosphere',
  		'analyse biocells' => 'analyse biocells',
  		'hang around' => 'hang around'
  		

  	}
end
