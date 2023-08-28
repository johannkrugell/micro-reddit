class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      # Attributes
      t.string :title
      t.string :body
      # Associations
      # A post belongs to a user
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
