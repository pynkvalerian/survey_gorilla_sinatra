class CreateSurveyParticipantsTable < ActiveRecord::Migration
  def change
  	create_table :survey_participants do |t|
  		t.integer :survey_id
  		t.integer :user_id
  		t.timestamps null: false
  	end
  end
end
