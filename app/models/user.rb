class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews, through: :user_reviews
  has_many :user_reviews

  has_many :experiences, through: :user_groups
  has_many :user_groups

  validates :name, presence: true
end
