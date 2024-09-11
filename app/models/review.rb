class Review < ApplicationRecord
  belongs_to :reviewer, class_name: "User"
  belongs_to :reviewed_restaurant, class_name: "Restaurant"
end
