class AddEntryIdToJams < ActiveRecord::Migration
  def change
    add_column :jams, :entry_id, :integer
    add_column :entries, :jam_id, :integer
  end
end
