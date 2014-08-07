class CreateTaiguos < ActiveRecord::Migration
  def change
    create_table :taiguos do |t|
      t.string :title
      t.integer :price
      t.attachment :avatar
      t.attachment :avatar1
      t.text :description
      t.text :xingcheng
      t.text :feiyongshuoming
      t.text :wenxintishi
      t.text :yudingtishi

      t.timestamps
    end
  end
end
