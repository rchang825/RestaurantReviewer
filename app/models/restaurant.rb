class Restaurant < ApplicationRecord
  has_many :reviews, foreign_key: :reviewed_restuarant_id
  has_many :reviewers, through: :reviews, source: :reviewer
end
