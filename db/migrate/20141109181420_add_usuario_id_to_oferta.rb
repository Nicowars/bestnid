class AddUsuarioIdToOferta < ActiveRecord::Migration
  def change
    add_column :oferta, :usuario_id, :integer
  end
end
