class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :descripcion
      t.string :imagen

      t.timestamps
    end
  end
end
