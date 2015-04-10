class ChangeTattoosAddPlayerId < ActiveRecord::Migration
	  def change
	    change_table :tattoos do |t|
	      t.integer :player_id     	
	  end
	end
end
