class CreateRovers < ActiveRecord::Migration[6.0]
  def change
    create_table :rovers do |t|
      t.string :name
      t.string :model
      t.string :purpose

      t.timestamps
    end
  end
end
