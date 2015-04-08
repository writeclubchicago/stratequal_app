class CreateTattoos < ActiveRecord::Migration
  def change
    create_table :tattoos do |t|
      t.string :player_id

      t.timestamps null: false
    end
  end
end
