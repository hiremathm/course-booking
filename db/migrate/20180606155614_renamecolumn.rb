class Renamecolumn < ActiveRecord::Migration
  def change
  	rename_column :courses, :section, :section_id

  end
end
