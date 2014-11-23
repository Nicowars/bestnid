class Categoria < ActiveRecord::Base
has_many :productos

validates :nombre,
	uniqueness: true,
	presence: true
	
end
