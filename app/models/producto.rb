class Producto < ActiveRecord::Base
	belongs_to :usuario

	validates :nombre,
		presence: true,
		uniqueness: true
	validates :descripcion,
		presence: true
	validates :imagen,
		presence: true


end
