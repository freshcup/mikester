class Routine < ApplicationRecord

  

  validates :title, presence: true, length: { maximum: 140, minimum: 3 }
  validates :description, presence: true, length: { maximum: 140, minimum: 3 }
end
