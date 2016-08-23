class CreateBabiesParents < ActiveRecord::Migration[5.0]
  def change
    create_table :babies_parents do |t|
      t.references :parent, foreign_key: true
      t.references :baby
    end
  end
end
