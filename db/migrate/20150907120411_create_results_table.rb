class CreateResultsTable < ActiveRecord::Migration
  def change
  	create_table :results do |t|
  		t.integer :survey_participants_id
  		t.integer :question_id
  		t.integer :choice_id
  		t.timestamps null: false
  	end
  end
end
