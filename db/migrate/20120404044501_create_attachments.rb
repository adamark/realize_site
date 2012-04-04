class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :image_uid
      t.string :description
      t.integer :user_id
      t.integer :post_id
      t.integer :event_id

      t.timestamps
    end
  end
end
