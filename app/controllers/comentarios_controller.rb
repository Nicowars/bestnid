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
  if params[:comentario][:usuario_id]!=""
    usu = Usuario.find(params[:comentario][:usuario_id])
  else
    usu = nil
  end

    prod = Producto.find(params[:comentario][:producto_id])
	  ask = params[:comentario][:pregunta] == "true" 

  	@comentario.usuario=usu
    @comentario.producto=prod
    @comentario.detalle=params[:comentario][:detalle]
	  @comentario.pregunta=ask

	if !ask
    come= Comentario.find(params[:comentario][:com])
    come.comentario= @comentario
    come.save
  end
    @comentario.comentario= nil
  
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
