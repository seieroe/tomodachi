class RemoveTomodachiIdFromMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column(:messages, :tomodachi_id)
  end
end
