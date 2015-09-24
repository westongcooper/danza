class AddIntensiveToRules < ActiveRecord::Migration
  def change
    add_column :rules, :intensive, :boolean
  end
end
