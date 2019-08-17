class Routine < ApplicationRecord

  belongs_to :user
  
  validates :title, presence: true, length: { maximum: 90, minimum: 4 }
  validates :description, presence: true, length: { maximum: 90, minimum: 4 }
end
