class AddDieToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :die, :text
  end
end
