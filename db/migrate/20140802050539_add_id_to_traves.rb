class AddIdToTraves < ActiveRecord::Migration
  def change
    add_column :traves, :addcity_id, :integer
  end
end
