class AddOtherColorToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :other_color, :string
  end
end
