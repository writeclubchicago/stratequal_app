class AddPlayerImageFirstName < ActiveRecord::Migration
  def change
  	change_table :players do |t|
  		t.string :first_name
  		t.string :image
  end
end

end 