class CreatePlayerAnswers < ActiveRecord::Migration
  def change
    create_table :player_answers do |t|
      t.integer :player_id
      t.integer :answer_id
    end
  end
end
