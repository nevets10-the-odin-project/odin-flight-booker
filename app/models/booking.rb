class Booking < ApplicationRecord
  belongs_to :flight, class_name: 'Flight'
  has_many :passengers, inverse_of: :booking

  accepts_nested_attributes_for :passengers, reject_if: :all_blank

  before_validation :find_or_create_passenger

  private

  def find_or_create_passenger
    passengers.each do |passenger|
      Passenger.find_or_create_by(name: passenger.name, email: passenger.email)
    end
  end
end
