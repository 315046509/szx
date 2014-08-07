class CreateFreelines < ActiveRecord::Migration
  def change
    create_table :freelines do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.attachment :avatar
      t.integer :city_id

      t.timestamps
    end
  end
end
