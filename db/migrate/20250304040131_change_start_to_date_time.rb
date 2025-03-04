class ChangeStartToDateTime < ActiveRecord::Migration[8.0]
  def change
    change_column :flights, :start, :datetime
  end
end
