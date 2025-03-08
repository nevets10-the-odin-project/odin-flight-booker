class Passenger < ApplicationRecord
  belongs_to :booking, inverse_of: :passengers
  validates :name, :email, presence: true
end
