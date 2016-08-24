class DropBabiesParents < ActiveRecord::Migration[5.0]
  def change
    drop_table :babies_parents
  end
end
