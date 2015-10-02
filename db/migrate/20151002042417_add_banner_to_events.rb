class AddBannerToEvents < ActiveRecord::Migration
  def change
    add_column :events, :banner, :string
  end
end
