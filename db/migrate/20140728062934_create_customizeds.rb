class CreateCustomizeds < ActiveRecord::Migration
  def change
    create_table :customizeds do |t|
      t.string :company_name
      t.string :name
      t.string :tell
      t.string :caltel

      t.timestamps
    end
  end
end
