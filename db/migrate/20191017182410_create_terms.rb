class CreateTerms < ActiveRecord::Migration[6.0]
  def change
    create_table :terms do |t|
      t.integer :book_id, null: false
      t.integer :category_id, null: false
      t.string :word, null: false
      t.string :furigana, null: false
      t.text :summary, null: false
      t.integer :view, null: false, default: 0

      t.timestamps
    end
    add_index :terms, :furigana
  end
end
