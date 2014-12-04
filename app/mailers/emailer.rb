class Emailer < ActionMailer::Base
  default :from => 'bestnidmail@gmail.com'

  def hola(usuario)
    @usuario = usuario
    @url = "http://bestnid-alpha.herokuapp.com"
    mail(:to => usuario.mail, :subject => "Bestnid")
  end

end
