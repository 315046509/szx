class CreateOneCities < ActiveRecord::Migration
  def change
    create_table :one_cities do |t|
      t.string :title
      t.integer :question_category_id, :default => 0

      t.timestamps
    end
  end
end
