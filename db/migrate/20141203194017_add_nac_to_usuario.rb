class AddNacToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :nac, :date
  end
end
