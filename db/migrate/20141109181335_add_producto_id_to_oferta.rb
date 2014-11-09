class AddProductoIdToOferta < ActiveRecord::Migration
  def change
    add_column :oferta, :producto_id, :integer
  end
end
