class CreateSkillPlayers < ActiveRecord::Migration
  def change
    create_table :skill_players do |t|
      t.integer :player_id
      t.integer :skill_id

      t.timestamps null: true
    end
  end
end
