class AddAliasToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :alias, :string
  end
end
