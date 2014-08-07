class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :mobile
      t.string :email
      t.string :passwd

      t.timestamps
    end
  end
end
