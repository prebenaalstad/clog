class Incident < ApplicationRecord
  belongs_to :user
  validates :main_case, length: {is: 6}
  self.per_page = 8
end
