class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false, unique: true
      t.string :export, null: false

      t.timestamps
    end
  end
end
