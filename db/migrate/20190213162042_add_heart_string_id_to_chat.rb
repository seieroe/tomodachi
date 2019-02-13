class AddHeartStringIdToChat < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :heart_string_id, :integer
  end
end
