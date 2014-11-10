class Usuario < ActiveRecord::Base
	has_many :productos
	has_many :ofertas
	has_many :comentarios

<<<<<<< HEAD
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
=======
	validates_presence_of :nombre, :mail  
	validates_presence_of :password, :on => :create  
	validates_presence_of :nombre, :with => /^[-\w\._@]+$/i, :allow_blank => true, :message => "should only contain letters, numbers, or .-_@"  
	validates_uniqueness_of :nombre, :mail  
	validates_length_of :password, :minimum => 4, :allow_blank => true  
	validates_confirmation_of :password
>>>>>>> origin/registro
end
