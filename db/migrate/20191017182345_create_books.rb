class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.boolean :edit, null: false, default: false

      t.timestamps
    end
    add_index :books, :title
  end
end
