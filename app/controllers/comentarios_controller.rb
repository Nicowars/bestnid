class ComentariosController < ApplicationController
  before_action	:get,		only: [:show, :edit, :update, :destroy]
  before_action	:new,		only: :create
  
  def get
    @comentario= Comentario.find(params[:id])
  end
  
  def new
    @comentario= Comentario.new
  end
  def index
    @comentarios= Comentario.all
  end

  def show
  end
  def edit
  end

  def create
    usu = Usuario.find(params[:comentario][:usuario_id])
    prod = Producto.find(params[:comentario][:producto_id])
	if params[:comentario][:pregunta]=="true" 
		ask = true
	else
		ask = false
	end
  	@comentario.usuario=usu
    @comentario.producto=prod
    @comentario.detalle=params[:comentario][:detalle]
	@comentario.pregunta=ask
	@comentario.comentario=!ask
    @comentario.save
    redirect_to prod
  end
  def update
  	@comentario.usuario=params[:comentario][:usuario]
    @comentario.producto=params[:comentario][:producto]
    @comentario.detalle=params[:comentario][:detalle]
    @comentario.save
    redirect_to params[:comentario][:producto]
  end
  def destroy
    @comentario.destroy
    redirect_to comentarios_path
  end

end
