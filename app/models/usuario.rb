class Usuario < ActiveRecord::Base
	has_many :productos
	has_many :ofertas
	has_many :comentarios

	
	validates_uniqueness_of :alias, :tel, :credit, message: "ya existe"
	validates_numericality_of :tel, :credit, message: "debe ser un numero"
	validates :nombre,
		presence: true,
		format: { with: /\A[a-zA-Z\s]+\z/, message: "Solo puede tener letras y espacios" }
		
	validates :password,
		presence: true
		
	validates :alias,
		presence: true,
		format: { with: /\A[\w\.-]+\z/, message: "Solo puede tener letras, numeros o -, ., _"  }

	validates :tel,
		presence: true

	validates :credit,
		presence: true
end
