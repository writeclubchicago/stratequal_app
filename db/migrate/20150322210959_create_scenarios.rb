class CreateScenarios < ActiveRecord::Migration
  def change
    create_table :scenarios do |t|
      t.string :scenario
      t.string :description
      t.string :short_description
      t.string :choice_one
      t.string :choice_two
    end
  end
end
