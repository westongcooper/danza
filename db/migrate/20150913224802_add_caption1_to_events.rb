class AddCaption1ToEvents < ActiveRecord::Migration
  def change
    add_column :events, :caption1, :string
  end
end
