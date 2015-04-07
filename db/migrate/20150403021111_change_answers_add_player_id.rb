class ChangeAnswersAddPlayerId < ActiveRecord::Migration
  def change
    change_table :answers do |t|
      t.integer :player_id  	
  end
end

end 