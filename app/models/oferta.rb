class Oferta < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :producto

	validates :detalle, presence: true
	validates :monto, presence: true
	validates_numericality_of :monto, greater_than_or_equal_to: 1, message: 'Debes ofertar al menos un peso'
end
