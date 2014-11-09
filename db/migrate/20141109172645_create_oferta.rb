class CreateOferta < ActiveRecord::Migration
  def change
    create_table :oferta do |t|
      t.string :detalle

      t.timestamps
    end
  end
end
