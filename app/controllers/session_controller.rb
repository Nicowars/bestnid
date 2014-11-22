class SessionController < ApplicationController
  
  def new

  end

  def create
     user = Usuario.find_by(alias: params[:alias])  
    if user && user.password==params[:password]  
      session[:usuario_id] = user.id  
      redirect_to root_url, :notice => "Conectado"  
    else  
      flash[:notice]="Alias o contrasena invalida"
      render 'new' 
    end 
  end

  def destroy
  	session[:usuario_id] = nil  
    redirect_to root_url, :notice => "Desconectado"  
  end
end
