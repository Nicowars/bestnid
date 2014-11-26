class AddMontoToOferta < ActiveRecord::Migration
  def change
    add_column :oferta, :monto, :integer
  end
end
