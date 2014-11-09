class Usuario < ActiveRecord::Base
	has_many :productos
	has_many :ofertas
	has_many :comentarios

	validates :nombre,
		presence: {true, :with => /^[-\w\._]+$/i, :allow_blank =>true, message: "Solo puede contener letras, numeros, o .-_"}
		lenght: {maximum: 20, message: "el nombre no puede tener más de 20 caracteres"}
	validates :mail,
		presence: {true, message: "Campo obligatorio"}
		uniqueness: {true, mesage: "Este e-mail ya esta registrado"}
		#formato general del mail
		VALID_EMAIL_REGEX = /\A[w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
		format: { :with => VALID_EMAIL_REGEX , message: "E-mail no válido"}
	validates :password,
		presence: true,
		confirmation: true
end
