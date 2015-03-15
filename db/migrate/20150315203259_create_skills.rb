class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.string :image_url
      t.string :description

      t.timestamps null: true
    end
  end
end
