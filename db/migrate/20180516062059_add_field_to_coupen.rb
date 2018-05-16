class AddFieldToCoupen < ActiveRecord::Migration[5.1]
  def change
    add_column :coupens, :url, :string
  end
end
