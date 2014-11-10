class SessionController < ApplicationController
  def new
      user = Usuario.find_by(alias: params[:alias])  
  if user && user.password==params[:password]  
    session[:usuario_id] = user.id  
    redirect_to root_url, :notice => "Logged in!"  
  else  
    flash.now.alert = "Usuario o contrasena incorrectos"  
    render "new"  
  end 
  end

  def create
 
  end

  def destroy
  	session[:usuario_id] = nil  
    redirect_to root_url, :notice => "Desconectado"  
  end
end
