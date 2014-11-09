class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :detalle

      t.timestamps
    end
  end
end
