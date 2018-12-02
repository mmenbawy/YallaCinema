class Cinema < ApplicationRecord
    has_many :tickets

    validates :name, :address, :region,
           presence: true
end
