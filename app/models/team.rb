class Team < ApplicationRecord
  has_many :users, inverse_of: :team
end
