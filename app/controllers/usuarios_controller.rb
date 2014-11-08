class UsuariosController < ApplicationController
	before_action	:get,	only: [:show, :edit, :update, :destroy]
 	before_action	:new,	only: :create
  
  def get
    @usuario= Usuario.find(params[:id])
  end
  
  def new
    @usuario= Usuario.new
  end
  def index
    @usuarios= Usuario.all
  end

  def show
  end
  def edit
  end

  def create
    @usuario.nombre=params[:usuario][:nombre]
    #@usuario.imagen=params[:usuario][:imagen]
    @usuario.mail=params[:usuario][:mail]
    @usuario.password=params[:usuario][:password]
    @usuario.save
    redirect_to usuarios_path
  end
  def update
    @usuario.nombre=params[:Usuario][:nombre]
    #@usuario.imagen=params[:Usuario][:imagen]
    @usuario.descripcion=params[:Usuario][:descripcion]
    @usuario.password=params[:usuario][:password]
    @usuario.save
    redirect_to usuarios_path
  end
  def destroy
    @usuario.destroy
    redirect_to usuarios_path
  end

end
