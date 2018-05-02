class CreateProduct5s < ActiveRecord::Migration[5.1]
  def change
    create_table :product5s do |t|
      t.string :image
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
