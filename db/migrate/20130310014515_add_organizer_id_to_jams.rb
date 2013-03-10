class AddOrganizerIdToJams < ActiveRecord::Migration
  def change
    add_column :jams, :organizer_id, :int
  end
end
