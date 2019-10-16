class CreateWeathers < ActiveRecord::Migration[6.0]
  def change
    create_table :weathers do |t|
      t.integer :day
      t.integer :month
      t.integer :year
      t.integer :solstice
      t.integer :minTemp
      t.integer :maxTemp

      t.timestamps
    end
  end
end
