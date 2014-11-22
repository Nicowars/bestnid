class ProductosController < ApplicationController
  before_action	:get,		only: [:show, :edit, :update, :destroy]
  before_action	:new,		only: :create
  
  def get
    @producto= Producto.find(params[:id])
  end
  
  def new
    @producto= Producto.new
  end
  def index
    @productos= Producto.search(params[:search])
  end

  def show
  end
  def edit
  end

  def create
    @producto.nombre=params[:producto][:nombre]
    @producto.imagen=params[:producto][:imagen]
    @producto.descripcion=params[:producto][:descripcion]
    v=params[:producto][:vencimiento].to_i
    d=Date.new(Time.now.year, Time.now.month, Time.now.day)
    d=d.advance(:days => +v)
    @producto.vencimiento=d
    if @producto.save
          redirect_to productos_path, :notice => "Producto publicado"
    else
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
