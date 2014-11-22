class Producto < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :categoria
	has_many :ofertas
	has_many :comentarios

	validates_presence_of :nombre, :descripcion, :imagen, :vencimiento, message: "Debe completarse"
	validates :nombre,
		format: { with: /\A[a-zA-Z\s]+\z/, message: "Solo puede tener letras y espacios" }


def self.search(search)
  if search
    #@productos = Producto.where('descripcion LIKE ?', "%#{search}%")
	@productos = where("descripcion = ? OR categoria_id = ?", search, Categoria.find_by(nombre: search).id)
  else
    @productos = Producto.all
  end
end

end
