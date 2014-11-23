class Producto < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :categoria
	has_many :ofertas
	has_many :comentarios

	default_scope -> { order("created_at desc") }
	scope :recientes, -> { order("created_at desc") } 
	scope :antiguos, -> { order("created_at asc")}
	scope :avencer, -> { order("vencimiento asc")}
	scope :alfabetico, -> { order("nombre asc")}
	scope :categorico, -> { order("categoria asc")}
	scope :hot, -> { order("ofertas.count")}
	
	validates_presence_of :nombre, :descripcion, :imagen, :vencimiento, message: "Debe completarse"
	validates :nombre,
		format: { with: /\A[a-zA-Z\s]+\z/, message: "Solo puede tener letras y espacios" }


def self.search(search)
  if search
	if Categoria.find_by(nombre: search)
		@productos = where("categoria_id = ?", Categoria.find_by(nombre: search).id) | where('descripcion LIKE ? OR nombre LIKE ?', "%#{search}%", "%#{search}%")
	else
		@productos = where('descripcion LIKE ? OR nombre LIKE ?', "%#{search}%", "%#{search}%")
	end
  else
    @productos = Producto.all
  end
end

end
