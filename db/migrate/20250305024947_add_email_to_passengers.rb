class AddEmailToPassengers < ActiveRecord::Migration[8.0]
  def change
    add_column :passengers, :email, :string
  end
end
