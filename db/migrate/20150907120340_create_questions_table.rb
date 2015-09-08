class CreateQuestionsTable < ActiveRecord::Migration
  def change
  	create_table :questions do |t|
  		t.string :text
  		t.integer :survey_id
  		t.timestamps null: false
  	end
  end
end
