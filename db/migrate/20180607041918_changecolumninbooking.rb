class Changecolumninbooking < ActiveRecord::Migration
  def change
  	change_column :bookings, :time, :string
  	
  end
end
