class CreateEditables < ActiveRecord::Migration[6.0]
  def change
    create_table :editables do |t|
      t.integer :book_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
