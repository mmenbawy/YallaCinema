class User < ApplicationRecord

has_many :bookings
has_many :tickets, through: :bookings
end
