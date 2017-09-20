class Unit < ApplicationRecord
  validates :date_start, :date_end, presence: true
  belongs_to :user
  belongs_to :author
end
