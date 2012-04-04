class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :bio
      t.string :avatar
      t.string :password_digest
      t.boolean :admin

      t.timestamps
    end
  end
end