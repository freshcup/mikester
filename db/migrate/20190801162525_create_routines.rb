class CreateRoutines < ActiveRecord::Migration[5.2]
  def change
    create_table :routines do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.timestamps
    end
    add_index :routines, :user_id
  end
end
