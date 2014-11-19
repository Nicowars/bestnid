class AddPreguntaToComentario < ActiveRecord::Migration
  def change
    add_column :comentarios, :pregunta, :boolean
  end
end
