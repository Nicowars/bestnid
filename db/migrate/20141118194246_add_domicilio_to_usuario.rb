class AddDomicilioToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :domicilio, :string
  end
end
