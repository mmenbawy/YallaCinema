class Cinema < ApplicationRecord
    has_many :tickets

    validates :name, :address, :region,
           presence: true
    validates :name, :address, uniqueness: { case_senstive: false }

end
