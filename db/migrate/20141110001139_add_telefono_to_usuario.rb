class AddTelefonoToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :tel, :integer
  end
end
