class LocationOption < ApplicationRecord

  #  Add Direct Associations (Guide)
  belongs_to :trip
  has_many :location_preferences, :foreign_key => "location_options_id", :dependent => :nullify


end
