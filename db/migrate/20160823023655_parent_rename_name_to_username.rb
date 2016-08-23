class ParentRenameNameToUsername < ActiveRecord::Migration[5.0]
  def change
  	rename_column :parents, :name, :username
  end
end
