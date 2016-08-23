class CreateParentProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :parent_profiles do |t|
      t.date :birthday
      t.string :gender
      t.references :parent, foreign_key: true

      t.timestamps
    end
  end
end
