class ChangePlayersAddTattooAddOccupation < ActiveRecord::Migration
  def change
  	change_table :players do |t|  	
      t.integer :tattoo_id 
      t.string :occupation
      t.string :woeid      
  end
end
end 