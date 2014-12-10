class TradeController < ApplicationController
  
  def new
  	oh = Oferta.find(params[:oferta_id])
  	proh = oh.producto
  	proh.ganador = oh.id
  	proh.created_at = Time.now
  	proh.save
  	Emailer.notificar_subastador(proh).deliver
  	Emailer.notificar_comprador(Usuario.find(oh.usuario_id), proh).deliver
  end
   
end
