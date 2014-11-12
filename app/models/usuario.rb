class Usuario < ActiveRecord::Base
	has_many :productos
	has_many :ofertas
	has_many :comentarios

	validates :nombre,
		presence: true,
		format: { with: /\A[a-zA-Z\s]+\z/, message: "Solo puede tener letras y espacios" }
		
	validates :password,
		presence: true
		
	validates :alias,
		presence: true,
		uniqueness: true,
		format: { with: /\A[\w\.-]+\z/, message: "Solo puede tener letras, numeros o -, ., _"  }

	validates :tel,
		presence: true, 
		uniqueness: true,
		numericality: true

	validates :credit,
		presence: true,
		uniqueness: true,	
		numericality: true

end
