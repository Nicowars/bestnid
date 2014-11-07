class Producto < ActiveRecord::Base
	belongs_to :usuario

	validates :nombre,
		presence: true,
		uniqueness: true
	validates :descripcion,
		presence: true
	validates :imagen,
		presence: true


def self.search(search)
  if search
    @productos = Producto.where('descripcion LIKE ?', "%#{search}%")
  else
    @productos = Producto.all
  end
end

end
