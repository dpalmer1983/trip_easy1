class Comment < ApplicationRecord

  #  Add Direct Associations (Guide)
  belongs_to :user
  has_one :trip


end
