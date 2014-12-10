class Emailer < ActionMailer::Base
  default :from => 'bestnidmail@gmail.com'

  def hola(usuario)
    @usuario = usuario
    @url = "http://bestnid-alpha.herokuapp.com"
    mail(:to => usuario.mail, :subject => "Bienvenid@ a Bestnid")
  end

  def notificar_subastador(producto)
  	@usuario = producto.usuario
  	@producto = producto
  	mail(:to => @usuario.mail, :subject => "Bestnid - Su producto se ha subastado exitosamente!")
  end
  
  def notificar_comprador(usuario, producto)
  	@usuario = usuario
  	@producto = producto
  	mail(:to => @usuario.mail, :subject => "Bestnid - Han elejido su oferta en un producto!")
  end

end
