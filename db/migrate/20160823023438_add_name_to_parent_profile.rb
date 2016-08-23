class AddNameToParentProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :parent_profiles, :name, :string
  end
end
