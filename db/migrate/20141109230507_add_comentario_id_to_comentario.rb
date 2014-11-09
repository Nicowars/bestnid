class AddComentarioIdToComentario < ActiveRecord::Migration
  def change
    add_column :comentarios, :comentario_id, :integer
  end
end
