class Slugevents < ActiveRecord::Migration
  def change
    add_index :events, :slug, unique: true
  end
end
