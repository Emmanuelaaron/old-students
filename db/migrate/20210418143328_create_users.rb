class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :username
      t.text :email
      t.string :password_digest
      t.integer :privileges
      t.timestamps
    end
  end
end
