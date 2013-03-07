class ComposUsers < ActiveRecord::Migration
  def up
    create_table :compos_users, :id => false do |t|
      t.references :compo
      t.references :user
    end
    add_index :compos_users, [:compo_id, :user_id]
    add_index :compos_users, [:user_id, :compo_id]
  end

  def down
    drop_table :compos_users
  end
end
