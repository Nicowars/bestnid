class RemoveAvatarFromUsuario < ActiveRecord::Migration
  def change
    remove_column :usuarios, :avatar, :string
  end
end
