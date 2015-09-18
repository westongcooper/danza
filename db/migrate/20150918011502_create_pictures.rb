class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.belongs_to :event, show: true
      t.string :pic
      t.string :caption
      t.timestamps null: false
    end
  end
end
