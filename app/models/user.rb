class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  #Add Direct Associations (Guide)
  has_many :comments, :dependent => :destroy
  has_many :locations, :class_name => "LocationPreference"
  has_many :date_preferences, :dependent => :destroy
  has_many :trips, :foreign_key => "planner_id", :dependent => :destroy
  has_many :invitations, :class_name => "Participant", :foreign_key => "participant_id", :dependent => :destroy

  #Add Indirect Associations (Guide)
  has_many :invited_trips, :through => :invitations, :source => :trip
end
