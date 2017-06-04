class DateOption < ApplicationRecord

  #  Add Direct Associations (Guide)
  belongs_to :trip
  has_many :date_preferences, :foreign_key => "date_options_id", :dependent => :nullify


end
