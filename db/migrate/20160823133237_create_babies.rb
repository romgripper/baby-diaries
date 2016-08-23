class CreateBabies < ActiveRecord::Migration[5.0]
  def change
    create_table :babies do |t|
      t.string :name
      t.string :nick
      t.date :birthday
      t.integer :birth_height
      t.integer :birth_weight
      t.references :parent, foreign_key: true

      t.timestamps
    end
  end
end
