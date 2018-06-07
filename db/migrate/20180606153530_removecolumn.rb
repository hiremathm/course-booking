class Removecolumn < ActiveRecord::Migration
  def change
  	remove_column :sections, :string

  end
end
