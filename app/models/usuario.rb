class Usuario < ActiveRecord::Base
	has_many :productos
	has_many :ofertas
	has_many :comentarios

	validates :alias,
		presence: true,
		uniqueness: true

	validates :tel,
		presence: true, 
		uniqueness: true,
		numericality: true

	validates :credit,
		presence: true,
		uniqueness: true	

end
