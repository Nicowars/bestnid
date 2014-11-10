class Usuario < ActiveRecord::Base
	has_many :productos
	has_many :ofertas
	has_many :comentarios

	validates :alias,
		presence: true,
		uniqueness: true

	validates :nombre,
		presence: true

	validates :mail,
		uniqueness: true

	validates :password,
		presence: true

	validates :tel,
		presence: true,
		uniqueness: true

	validates :credit,
		presence: true,
		uniqueness: true	
end
