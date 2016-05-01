#
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :token, null: false, index: { unique: true }
      t.string :password_digest, null: false
      t.string :username, null: false, index: { unique: true }

      t.timestamps null: false
    end
    add_index :users, [:email, :username], unique: true
  end
end
