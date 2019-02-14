class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.belongs_to :heart_string, foreign_key: true
      t.string :caption
      t.datetime :valentime

      t.timestamps
    end
  end
end
