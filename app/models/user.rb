class User < ApplicationRecord
  # Associations
  # A user can have many posts
  has_many :posts
  # A user can have many comments
  has_many :comments
  # Validation
  # A user must have a unique user_name
  validates :user_name, presence: true, uniqueness: true, length: { minimum: 8 }
  # A user must have a unique email address
  validates :email, presence: true, uniqueness: true
  # A user must have a password_digest
  validates :password_digest, presence: true
end
