class TempTask < ApplicationRecord
  belongs_to :author
  belongs_to :user
  
  validates :companys, :date_start, :date_end, :author_id, :user_id, presence: true
  
end
