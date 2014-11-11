class Usuario < ActiveRecord::Base
	has_many :productos
	has_many :ofertas
	has_many :comentarios

	validates :nombre,
		presence: true,
		format: { :with => /\A[a-zA-Z\s]+\z/ }

	validates :password,
		presence: true

	validates :alias,
		presence: true,
		uniqueness: true,
		format: { :with => /\A[\w\.-]+\z/ }

	validates :tel,
		presence: true, 
		uniqueness: true,
		numericality: true

	validates :credit,
		presence: true,
		uniqueness: true,	
		numericality: true

end
