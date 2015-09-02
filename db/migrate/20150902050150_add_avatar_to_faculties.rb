class AddAvatarToFaculties < ActiveRecord::Migration
  def change
    add_column :faculties, :avatar, :string
  end
end
