class CreateHeartStrings < ActiveRecord::Migration[5.2]
  def change
    create_table :heart_strings do |t|
      t.integer :user_id
      t.integer :tomodachi_id

      t.timestamps
    end
  end
end
