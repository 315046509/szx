class CreateVisas < ActiveRecord::Migration
  def change
    create_table :visas do |t|
      t.string :title
      t.integer :price
      t.string :bianhao
      t.string :leixing
      t.string :banlishijian
      t.string :mianshi
      t.string :youxiaoqi
      t.string :rujingcishu
      t.string :zuichangshijian
      t.text :shoukefanwei
      t.text :description
      t.integer :question_category_id, :default => 0

      t.timestamps
    end
  end
end
