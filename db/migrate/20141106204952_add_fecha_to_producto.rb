class AddFechaToProducto < ActiveRecord::Migration
  def change
    add_column :productos, :fecha, :date
  end
end
