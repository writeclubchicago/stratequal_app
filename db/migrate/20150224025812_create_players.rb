class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :last_name
      t.string :gender

      t.timestamps null: true
    end
  end
end
