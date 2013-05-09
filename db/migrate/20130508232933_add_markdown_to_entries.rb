class AddMarkdownToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :markdown, :boolean, :default => false
  end
end
