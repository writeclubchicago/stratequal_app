class ChangeScenarioAddPlayerId < ActiveRecord::Migration
  def change
    change_table :scenarios do |t|
      t.integer :player_id        	
  end
end
end 