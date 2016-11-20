class AddAttributes < ActiveRecord::Migration[5.0]
  def change
    add_column :routes, :weight, :integer
    add_column :routes, :description, :text
    add_column :routes, :color, :text
  end
end
