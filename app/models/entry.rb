class Entry < ApplicationRecord
  validates :case, length: {is: 6}
  belongs_to :user
  self.per_page = 8
end
