class CreateUsernames < ActiveRecord::Migration
  def change
    create_table :usernames do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps null: false
      
      t.index :email, unique: true #この行を追加
    end
  end
end
