class AddGanadorToProducto < ActiveRecord::Migration
  def change
    add_column :productos, :ganador, :integer
  end
end
