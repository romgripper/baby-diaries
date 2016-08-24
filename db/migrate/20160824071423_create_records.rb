class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.date :date
      t.integer :weight
      t.integer :height
      t.string :first_time

      t.timestamps
    end
  end
end
