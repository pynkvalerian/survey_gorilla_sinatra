class CreateSurveysTable < ActiveRecord::Migration
  def change
  	create_table :surveys do |t|
  		t.string :text
  		t.string :description
  		t.string :unique_url
  		t.integer :user_id
  		t.timestamps null: false
  	end
  end
end
