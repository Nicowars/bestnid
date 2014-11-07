class Usuario < ActiveRecord::Base
	has_many :productos

	validates :nombre,
		presence: true
	validates :mail,
		presence: true,
		uniqueness: true
	validates :password,
		presence: true

	
end
