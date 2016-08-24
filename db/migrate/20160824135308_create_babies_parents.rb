class CreateBabiesParents < ActiveRecord::Migration[5.0]
  def change
    create_table :babies_parents, id: false do |t|
      t.references :parent, foreign_key: true
      t.references :baby, foreign_key: true
    end
  end
end
