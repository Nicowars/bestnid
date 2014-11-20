class AddVencimientoToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :vencimiento, :date
  end
end
