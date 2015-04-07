class ChangeScenariosAddAnswerId < ActiveRecord::Migration
  def change
    change_table :scenarios do |t|
      t.integer :answer_id  	
  end
end

end 