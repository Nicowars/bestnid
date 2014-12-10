class ProductosController < ApplicationController
  before_action	:get,		only: [:show, :edit, :update, :destroy]
  before_action :getUsuarios, only: [:show, :edit, :update, :destroy]
  before_action	:new,		only: :create
  
  def get
    @producto= Producto.find(params[:id])
  end
  def getUsuarios
    @comentario = Comentario.new
    @u_ofertas={}
    for i in 0..@producto.ofertas.size-1
      @u_ofertas[i]= Producto.find(params[:id]).ofertas[i].usuario_id
    end
  end

  def new
    @producto= Producto.new
  end
  def index
	@productos= Producto.search(params[:search]).where({ ganador: nil })
	if (params[:orden] == 'Mas recientes')
		@productos= Producto.search(params[:search]).order("created_at desc")
	end
	if (params[:orden] == 'Mas antiguos')
		@productos= Producto.search(params[:search]).order("created_at asc")
	end
	if (params[:orden] == 'Por vencer')
		@productos= Producto.search(params[:search]).order("vencimiento asc")
	end
	if (params[:orden] == 'Alfabetico')
		@productos= Producto.search(params[:search]).order("nombre asc")
	end
  if !params[:mostrar_v]
    @productos= @productos.where("vencido = false")
  end
  end

  def show
  end
  def edit
  end

  def create
    @producto.nombre=params[:producto][:nombre]
    @producto.imagen=params[:producto][:imagen]
    @producto.descripcion=params[:producto][:descripcion]
	@producto.categoria=Categoria.find(params[:producto][:categoria_id])
    if session[:usuario_id]!=nil
      @producto.usuario_id=session[:usuario_id]
      v=params[:producto][:vencimiento].to_i
      if v>14 && v<31  
        d=Date.new(Time.now.year, Time.now.month, Time.now.day)
        d=d.advance(:days => +v)
        @producto.vencimiento=d
        if @producto.save
           redirect_to productos_path, :notice => "Producto publicado"
        else
           render 'new'
        end
      else
        @producto.errors[:vencimiento] = " debe ser entre 15 y 30"
        render 'new'
      end
    else
      flash[:notice]="Debe estar logueado"
      render 'new'
    end
  end
  def update
    @producto.descripcion=params[:producto][:descripcion]
    if @producto.save
     redirect_to productos_path, :notice => "Agregada descripcion"
    else
      render 'update'
    end
  end
  def destroy
    @producto.destroy
    redirect_to productos_path
  end

end
