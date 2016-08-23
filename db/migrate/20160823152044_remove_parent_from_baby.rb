class RemoveParentFromBaby < ActiveRecord::Migration[5.0]
  def change
  	remove_column :babies, :parent_id
  end
end
