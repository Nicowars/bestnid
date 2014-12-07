class EstadisticasController < ApplicationController
  
  def show
	
  end
  def estas

  	if params[:fechain] == [""] || params[:fechafin] == [""] || (params[:opcion]!= "producto" && params[:opcion] != "usuario")
		flash[:notice]="Todos los campos deben completarse"
		render 'show'
  	else
  	fechain=params[:fechain][0]
  	fechafin=params[:fechafin][0]
  		if  (Date.parse(fechain) > Date.parse(fechafin))
  			flash[:notice]="La fecha de cierre debe ser igual o posterior a la fecha de inicio"
			render 'show'
  		else
			if params[:opcion] == "usuario"
				lista = Usuario.where({ created_at: (fechain..fechafin) })
				params[:lista] = lista
				render 'estas'
			else
				render 'show'
			end
		end
  	end
  end
end
