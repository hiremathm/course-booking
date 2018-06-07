class Changestringtotime < ActiveRecord::Migration
  def change
  	change_column :bookings, :time, :time
  end
end
