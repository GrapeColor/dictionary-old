class CreateEditUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :edit_users do |t|

      t.timestamps
    end
  end
end
