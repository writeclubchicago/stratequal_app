class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city
      t.string :country
      t.string :woeid
      t.string :wikipedia_link

      t.timestamps null: false
    end
  end
end
