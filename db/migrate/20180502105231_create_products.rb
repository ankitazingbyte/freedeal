class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :image
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
