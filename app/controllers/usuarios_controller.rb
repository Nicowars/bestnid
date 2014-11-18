class UsuariosController < ApplicationController
	before_action	:get,	only: [:show, :edit, :update, :destroy]
 	before_action	:new,	only: :create
	#before_action	:comprobar,	only: :create
	
  #def comprobar
  
	#if (Usuario.find_by(mail: params[:usuario][:mail]) != nil )
		#redirect_to new_usuario_path, :notice => "El mail ya tiene un usuario registrado"
	#end
	#if (Usuario.find_by(nombre: params[:usuario][:nombre]) != nil )
		#redirect_to new_usuario_path, :notice => "El usuario con ese nombre ya esta registrado"
	#end
	#if (params[:usuario][:pass] != params[:usuario][:password])
		##end
	#end
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
  @usuario.nombre = params[:usuario][:nombre]
	@usuario.alias = params[:usuario][:alias]
	@usuario.mail = params[:usuario][:mail]
	@usuario.password = params[:usuario][:password]
	@usuario.tel = params[:usuario][:tel]
	@usuario.credit = params[:usuario][:credit]
  @usuario.domicilio = params[:usuario][:domicilio]
  @usuario.titular = params[:usuario][:titular]

    if @usuario.password == params[:usuario][:pass]
		if @usuario.save
			redirect_to root_url, :notice => "Registrado"
		else
			render 'new'
		end
	else
		@usuario.errors[:password] = "ambos campos deben ser iguales"
		render 'new'
	end
  end

  def update
  @usuario.nombre = params[:usuario][:nombre]
  @usuario.alias = params[:usuario][:alias]
  @usuario.mail = params[:usuario][:mail]
  @usuario.password = params[:usuario][:password]
  @usuario.tel = params[:usuario][:tel]
  @usuario.credit = params[:usuario][:credit]
  @usuario.domicilio = params[:usuario][:domicilio]
  @usuario.titular = params[:usuario][:titular]
  
    if @usuario.password == params[:usuario][:pass]
    if @usuario.save
      redirect_to root_url, :notice => "Datos modificados"
    else
      render 'update'
    end
  else
    @usuario.errors[:password] = "ambos campos deben ser iguales"
    render 'update'
  end
  end
  def destroy
    @usuario.destroy
    redirect_to usuarios_path
  end

end
