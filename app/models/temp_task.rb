class TempTask < ApplicationRecord
  belongs_to :author
  belongs_to :user
end
