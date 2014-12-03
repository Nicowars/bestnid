class ChangeDetalleFormatInOferta < ActiveRecord::Migration
  def up
   change_column :oferta, :detalle, :text
  end

  def down
   change_column :oferta, :detalle, :string
  end
end
