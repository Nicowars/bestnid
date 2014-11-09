class Comentario < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :producto
	belongs_to :comentario

	validates :detalle, presence: true

end
