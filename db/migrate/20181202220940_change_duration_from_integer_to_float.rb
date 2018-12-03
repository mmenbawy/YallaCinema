class ChangeDurationFromIntegerToFloat < ActiveRecord::Migration[5.2]
  def change
    change_table :movies do |t|
      remove_column :movies, :duration, :integer
      add_column :movies, :duration, :float       
    end
  end
end
