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
	d = Date.new(params[:ano].to_i, params[:mes].to_i, 01)
	@usuario.nombre = params[:usuario][:nombre]
	@usuario.alias = params[:usuario][:alias]
	@usuario.mail = params[:usuario][:mail]
	@usuario.password = params[:usuario][:password]
	@usuario.tel = params[:usuario][:tel]
	@usuario.credit = params[:usuario][:credit]
	@usuario.domicilio = params[:usuario][:domicilio]
	@usuario.titular = params[:usuario][:titular]
	@usuario.vencimiento = d
	@usuario.admin = false
	@usuario.nac = params[:usuario][:nac]
		i = ""
		b = ""
		f = ""	#error de fecha
		p = ""	#error de pass
#		if @usuario.nac > Date.new(Time.now.day.to_i, Time.now.month.to_i, (Time.now.year.to_i - 18))
		

		if @usuario.nac > Time.now
			i = " => Usted debe nacer para poder registrarse"
		else
			if @usuario.nac > Date.new(Time.now.year.to_i - 18, Time.now.month.to_i, Time.now.day.to_i)
				b = " => Usted debe ser mayor de 18 para poder registrarse"
			end
		end
		if d <= Time.now
			f = " => Tarjeta Vencida"
		end
		if @usuario.password != params[:usuario][:pass]
			p = " => ambos campos deben ser iguales"
		end
	   	if @usuario.save
			if p == "" && f = "" && i = "" && b = ""
				session[:usuario_id]=Usuario.find_by(alias: @usuario.alias).id
				Emailer.hola(@usuario).deliver
				redirect_to root_url, :notice => "Registrado y conectado"
			else
				if p != ""
					@usuario.errors[:contrasena] = p
				end
				if b != ""
					@usuario.errors[:nacimiento] = b
				end
				if i != ""
					@usuario.errors[:nacimiento] = i
				end
				if f != ""
					@usuario.errors[:Vencimiento] = f
				end
				@usuario.destroy
				render 'new'
			end
		else
			if p != ""
				@usuario.errors[:contrasena] = p
			end
			if b != ""
				@usuario.errors[:nacimiento] = b
			end
			if i != ""
				@usuario.errors[:nacimiento] = i
			end
			if f != ""
				@usuario.errors[:Vencimiento] = f
			end
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
  @usuario.vencimiento = params[:usuario][:vencimiento]
  @usuario.nac = params[:usuario][:nac]
  
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
	session[:usuario_id] = nil  
    @usuario.destroy
    redirect_to root_url, :notice=>"Su cuenta ha sido eliminada"
  end

end
