class AddCoinToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :coin, :text
  end
end
