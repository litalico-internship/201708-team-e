class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews, through: :user_reviews
  has_many :user_reviews

  validates :name, presence: true
end
