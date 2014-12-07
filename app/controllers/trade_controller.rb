class TradeController < ApplicationController
  
  def new
  	oh = Oferta.find(params[:oferta_id])
  	proh = oh.producto
  	proh.ganador = :oferta_id
  	proh.created_at = Time.now
  	proh.save
  	dinero = oh.monto * 7 / 10
  	Emailer.notificar_subastador(proh, dinero).deliver
  	Emailer.notificar_comprador(Usuario.find(oh.usuario_id), proh).deliver
  end
   
end
