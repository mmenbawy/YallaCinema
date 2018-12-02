class AddMidCidToTicket < ActiveRecord::Migration[5.2]
  def change
    
    change_table :tickets do |t|
      t.integer :movie_id
      t.integer :cinema_id 
    end
  
  end
end
