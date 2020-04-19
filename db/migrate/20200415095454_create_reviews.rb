class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title, null: false
      t.string :artist, null: false
      t.text :content
      t.string :image
      t.timestamps
    end
  end
end
