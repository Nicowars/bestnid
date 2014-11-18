class AddTitularToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :titular, :string
  end
end
