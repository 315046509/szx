class CreateRaiders < ActiveRecord::Migration
  def change
    create_table :raiders do |t|
      t.string :title
      t.text :description
      t.integer :city_id

      t.timestamps
    end
  end
end
