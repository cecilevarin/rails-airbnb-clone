class AddOtherFields < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :post_code, :string
    add_column :users, :telephone, :string
  end
end
