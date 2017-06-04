class Trip < ApplicationRecord

  #Add Direct Associations (Guide)
  belongs_to :planner, :class_name => "User"
  has_many :invitations, :class_name => "Participant", :dependent => :destroy
  has_many :location_options, :dependent => :destroy
  has_many :date_options, :dependent => :destroy
  belongs_to :comment

  #Add Indirect Associations (Guide)
  has_many :participants, :through => :invitations, :source => :participant

end
