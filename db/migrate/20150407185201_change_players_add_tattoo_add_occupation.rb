class ChangePlayersAddTattooAddOccupation < ActiveRecord::Migration
  def change
  	change_table :players do |t|  	
      t.string :tattoo
      t.string :occupation
      t.string :woeid      
  end
end
end 