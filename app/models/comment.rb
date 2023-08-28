class Comment < ApplicationRecord
  # Associations
  # A comment belongs to a user
  belongs_to :user
  # A comment belongs to a post
  belongs_to :post
  # Validation
  # A comment must have a body
  validates :body, presence: true, length: { maximum: 100 }
end
