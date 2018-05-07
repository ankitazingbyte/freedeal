class CreateLatests < ActiveRecord::Migration[5.1]
  def change
    create_table :latests do |t|
      t.string :image
      t.string :title
      t.string :description
      t.string :link
      t.string :discount

      t.timestamps
    end
  end
end
