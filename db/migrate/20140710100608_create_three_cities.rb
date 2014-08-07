class CreateThreeCities < ActiveRecord::Migration
  def change
    create_table :three_cities do |t|

      t.timestamps
    end
  end
end
