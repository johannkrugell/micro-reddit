class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      # Attributes
      t.string :title
      t.string :body
      # Associations
      # A comment belongs to a user
      t.belongs_to :user, null: false, foreign_key: true
      # A comment belongs to a post
      t.belongs_to :post, null: false, foreign_key: true
      t.timestamps
    end
  end
end
