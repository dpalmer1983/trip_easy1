class LocationPreference < ApplicationRecord

  #  Add Direct Associations (Guide)
  belongs_to :user
  belongs_to :location_options, :class_name => "LocationOption"


end
