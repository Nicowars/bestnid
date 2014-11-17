class SessionController < ApplicationController
  def new
    user = Usuario.find_by(alias: params[:alias])  
  if user && user.password==params[:password]  
    session[:usuario_id] = user.id  
    redirect_to root_url, :notice => "Conectado"  
  else  
    render "new", :notice => "Conectado"  
  end 
  end

  def create
 
  end

  def destroy
  	session[:usuario_id] = nil  
    redirect_to root_url, :notice => "Desconectado"  
  end
end
