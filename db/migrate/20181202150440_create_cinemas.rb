class CreateCinemas < ActiveRecord::Migration[5.2]
  def change
    create_table :cinemas do |t|
      t.string :name
      t.string :address
      t.string :region

      t.timestamps
    end
  end
end
