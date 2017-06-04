class DatePreference < ApplicationRecord



  #  Add Direct Associations (Guide)
  belongs_to :user
  belongs_to :date_options, :class_name => "DateOption"


end
