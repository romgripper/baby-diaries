class AddNoteToRecord < ActiveRecord::Migration[5.0]
  def change
    add_column :records, :note, :text
  end
end
