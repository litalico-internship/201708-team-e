class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews, through: :user_reviews
  has_many :user_reviews

  has_many :experiences, through: :user_groups
  has_many :user_groups

  validates :name, presence: true

  has_attached_file :avatar,
                      styles:  { medium: "300x300#", thumb: "100x100#" }
  validates_attachment_content_type :avatar,
                                      content_type: ["image/jpg","image/jpeg","image/png"]
end
