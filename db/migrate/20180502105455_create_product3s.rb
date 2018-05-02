class CreateProduct3s < ActiveRecord::Migration[5.1]
  def change
    create_table :product3s do |t|
      t.string :image
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
