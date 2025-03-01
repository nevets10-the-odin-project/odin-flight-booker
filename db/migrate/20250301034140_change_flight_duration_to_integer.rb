class ChangeFlightDurationToInteger < ActiveRecord::Migration[8.0]
  def change
    change_column :flights, :duration, :integer
  end
end
