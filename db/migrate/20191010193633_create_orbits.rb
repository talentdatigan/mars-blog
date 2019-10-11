class CreateOrbits < ActiveRecord::Migration[6.0]
  def change
    create_table :orbits do |t|
      t.string :name
      t.string :form
      t.string :height
      t.references :engine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
