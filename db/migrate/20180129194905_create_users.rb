class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email
      t.string :age
      t.integer :height_feet
      t.integer :height_inches
      t.float :weight
      t.string :fave_color
      t.timestamps
    end
  end
end
