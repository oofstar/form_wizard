class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :age, null: false
      t.integer :height_feet, null: false
      t.integer :height_inches, null: false
      t.float :weight
      t.string :fave_color, null: false
      t.timestamps
    end
  end
end
