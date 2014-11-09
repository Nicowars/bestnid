class AddUsuarioIdToProducto < ActiveRecord::Migration
  def change
    add_column :productos, :usuario_id, :integer
  end
end
