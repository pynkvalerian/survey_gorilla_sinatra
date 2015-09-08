class User < ActiveRecord::Base
  has_many :surveys
  has_many :survey_participants
end
