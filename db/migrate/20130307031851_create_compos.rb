class CreateCompos < ActiveRecord::Migration
  def change
    create_table :compos do |t|
      t.string :name
      t.text :description
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
