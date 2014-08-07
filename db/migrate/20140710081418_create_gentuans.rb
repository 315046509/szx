class CreateGentuans < ActiveRecord::Migration
  def change
    create_table :gentuans do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.attachment :avatar
      t.integer :city_id

      t.timestamps
    end
  end
end
