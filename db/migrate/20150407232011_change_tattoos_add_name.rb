class ChangeTattoosAddName < ActiveRecord::Migration
  def change
    change_table :tattoos do |t|
      t.string :name  

  end
end
end 