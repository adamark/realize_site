class CreateEmailLists < ActiveRecord::Migration
  def change
    create_table :email_lists do |t|
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end
