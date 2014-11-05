class Producto < ActiveRecord::Base
	validates :nombre,
		presence: true,
		uniqueness: true
	validates :descripcion,
		presence: true
	validates :imagen,
		presence: true


end
