class CreateGamecontents < ActiveRecord::Migration[6.1]
  def change
    create_table :gamecontents do |t|
      t.text :coin
      t.text :die
      t.integer :points
      t.integer :user_id

      t.timestamps
    end
  end
end
