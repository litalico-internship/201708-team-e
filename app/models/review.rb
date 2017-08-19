class Review < ApplicationRecord
  has_many :users, through: :user_reviews
  has_many :user_reviews
end
