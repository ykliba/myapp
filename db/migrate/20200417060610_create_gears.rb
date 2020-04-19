class CreateGears < ActiveRecord::Migration[5.2]
  def change
    create_table :gears do |t|
      t.string :title, null: false
      t.text :content
      t.string :image
      t.timestamps
    end
  end
end
