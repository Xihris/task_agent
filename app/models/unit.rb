class Unit < ApplicationRecord
  validates :date_start, :date_end, presence: true
  belongs_to :user
  belongs_to :author
  
  scope :blok, -> { where(:complete => false) }
  
  # def self.blok
  #   .where(complete: false)
  # end
  
end
