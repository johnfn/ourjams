class AddEntryIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :entry_id, :integer
    add_column :entries, :user_id, :integer
  end
end
