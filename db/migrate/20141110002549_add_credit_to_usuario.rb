class AddCreditToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :credit, :integer
  end
end
