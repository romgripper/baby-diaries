class AddBadyReferenceToRecord < ActiveRecord::Migration[5.0]
  def change
    add_reference :records, :baby, foreign_key: true
  end
end
