class AddProductoIdToComentario < ActiveRecord::Migration
  def change
    add_column :comentarios, :producto_id, :integer
  end
end
