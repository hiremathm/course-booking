class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :header
      t.string :description
      t.string :string

      t.timestamps null: false
    end
  end
end
