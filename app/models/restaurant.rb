class Restaurant < ApplicationRecord
  has_many :reviews, foreign_key: :reviewed_restaurant_id
  has_many :reviewers, through: :reviews, source: :reviewer
end
