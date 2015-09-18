class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.string :address
      t.datetime :date
      t.datetime :endDate
      t.text :description
      t.string :pdf
      t.boolean :complete
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end