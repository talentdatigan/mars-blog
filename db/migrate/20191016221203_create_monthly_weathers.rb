class CreateMonthlyWeathers < ActiveRecord::Migration[6.0]
  def change
    create_table :monthly_weathers do |t|
      t.string :month
      t.float :minTemp
      t.float :maxTemp

      t.timestamps
    end
  end
end
