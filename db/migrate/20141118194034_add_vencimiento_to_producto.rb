class AddVencimientoToProducto < ActiveRecord::Migration
  def change
    add_column :productos, :vencimiento, :date
  end
end
