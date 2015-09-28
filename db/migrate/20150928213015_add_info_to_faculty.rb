class AddInfoToFaculty < ActiveRecord::Migration
  def change
    add_column :faculties, :tittle, :string
    add_column :faculties, :phone, :string
    add_column :faculties, :email, :string
    add_column :faculties, :contact, :boolean
  end
end
