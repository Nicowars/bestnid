class AddVencidoToProducto < ActiveRecord::Migration
  def change
    add_column :productos, :vencido, :boolean
  end
end
