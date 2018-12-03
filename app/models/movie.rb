class Movie < ApplicationRecord
    has_many :tickets

    validates :name, :duration, :release_date, :genre, 
           presence: true
    validates :name, uniqueness: { case_senstive: false }

end
