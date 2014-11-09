class Usuario < ActiveRecord::Base
	has_many :productos
	has_many :ofertas
	has_many :comentarios

	validates :nombre,
		presence: true
	validates :mail,
		presence: true,
		uniqueness: true
	validates :password,
		presence: true

	
end
