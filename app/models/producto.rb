class Producto < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :categoria
	has_many :ofertas, dependent: :destroy
	has_many :comentarios, dependent: :destroy

	
	after_validation :vence

	validates_presence_of :nombre, :descripcion, :imagen, :vencimiento, message: "Debe completarse"
	validates :nombre,
		format: { with: /\A[a-zA-Z\s]+\z/, message: "Solo puede tener letras y espacios" }


def self.search(search)
  if search
	if Categoria.find_by(nombre: search)
		@productos = where('categoria_id = ? OR descripcion LIKE ? OR nombre LIKE ?', Categoria.find_by(nombre: search).id, "%#{search}%", "%#{search}%")
	else
		@productos = where('descripcion LIKE ? OR nombre LIKE ?', "%#{search}%", "%#{search}%")
	end
  else
    @productos = Producto.all
  end
end

def vence
	self.vencido = Date.today > self.vencimiento
end

end
