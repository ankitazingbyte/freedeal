class AddColumnToDeal < ActiveRecord::Migration[5.1]
  def change
    add_column :deals, :discount, :string
  end
end
