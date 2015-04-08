class CreateVillains < ActiveRecord::Migration
  def change
    create_table :villains do |t|
      t.string :name
      t.integer :tattoo_id  
    end
  end
end
