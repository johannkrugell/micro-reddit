class Post < ApplicationRecord
  # Associations
  # A post belongs to a user
  belongs_to :user
  # A post can have many comments
  has_many :comments
  # Validation
  # A post must have a title
  validates :title, presence: true, length: { maximum: 20 }, uniqueness: true
  # A post must have a body
  validates :body, presence: true, length: { maximum: 100 }
end
