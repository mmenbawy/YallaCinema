class Ticket < ApplicationRecord
    belongs_to :cinema
    belongs_to :movie
    has_many :bookings
    has_many :users, through: :bookings
end
