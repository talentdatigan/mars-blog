class CreateEngines < ActiveRecord::Migration[6.0]
  def change
    create_table :engines do |t|
      t.string :name
      t.string :model
      t.integer :astronauts

      t.timestamps
    end
  end
end
