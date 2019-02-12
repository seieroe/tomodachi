class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :tomodachi_id
      t.integer :chat_id
      t.string :content
      t.datetime :valentime

      t.timestamps
    end
  end
end
