class ChangeDetalleFormatInComentarios < ActiveRecord::Migration
  def up
   change_column :comentarios, :detalle, :text
  end

  def down
   change_column :comentarios, :detalle, :string
  end
end
