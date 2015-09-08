class Survey < ActiveRecord::Base
  has_many :questions
  has_many :survey_participants
  belongs_to :user
end
