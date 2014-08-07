class CreateJingdians < ActiveRecord::Migration
  def change
    create_table :jingdians do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.attachment :avatar
      t.integer :one_city_id

      t.timestamps
    end
  end
end
