class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.string :place, null: false
      t.text :content
      t.string :image
      t.timestamps
    end
  end
end
