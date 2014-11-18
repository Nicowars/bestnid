class RemoveCreditFromUsuario < ActiveRecord::Migration
  def change
    remove_column :usuarios, :credit, :integer
  end
end
