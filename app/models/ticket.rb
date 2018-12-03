class Ticket < ApplicationRecord
    belongs_to :cinema
    belongs_to :movie
    # has_many :bookings
    # has_many :users, through: :bookings

validates_associated :cinema, :movie


 def self.find_ticket(region, showtime) 

    Ticket.find_by_sql(["
    Select t.*, c.*, m.*
    from tickets t
    inner join cinemas c on c.id = t.cinema_id
    inner join movies m on m.id = t.movie_id
    where c.region = ? and
          t.showtime = ? ",
    region, showtime])
 end

end
