class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :about
      t.string :location
      t.string :date
      t.boolean :publish

      t.timestamps
    end
  end
end
