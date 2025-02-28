class CreateFlights < ActiveRecord::Migration[8.0]
  def change
    create_table :flights do |t|
      t.references :airport, null: false, foreign_key: true
      t.datetime :start
      t.time :duration

      t.timestamps
    end
  end
end
