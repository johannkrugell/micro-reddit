class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      # add user_name column to store user names
      t.string :user_name, unique: true, presence: true
      # add email column to store email addresses
      t.string :email, unique: true
      # add password_digest column to store hashed passwords
      t.string :password_digest

      t.timestamps
    end
  end
end
