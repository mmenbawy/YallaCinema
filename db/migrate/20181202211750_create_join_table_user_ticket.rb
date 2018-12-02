class CreateJoinTableUserTicket < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :tickets do |t|
        t.index :ticket_id
        t.index :user_id
      # t.index [:user_id, :ticket_id]
      # t.index [:ticket_id, :user_id]
    end
  end
end
