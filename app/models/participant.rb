class Participant < ApplicationRecord

  #Add Direct Associations (Guide)
  belongs_to :participant, :class_name => "User"
  belongs_to :trip


end
