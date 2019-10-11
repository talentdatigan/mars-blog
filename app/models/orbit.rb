class Orbit < ApplicationRecord
validates :name, :form,:height, presence: true
  belongs_to :engine
  enum form: {
    'Elliptical' => 'Elliptical',
    'Parabolla' => 'Parabolla',
    'Circular' => 'Circular'
}
 enum height: {
 	'450' => '450',
 	'1050' => '1050',
 	'2055' => '2055'
 }
end
