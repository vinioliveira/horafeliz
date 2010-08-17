class RegistrarPeriodoController < ApplicationController
  def checkin 
    hora = Time.now
    user = User.first
  
   if  user.checkin hora
     flash[:notice] = "Checkin realizado com sucesso!"
   end

   redirect_to :controller => :relatorio_horas, :action => :visualizar
  
  end 

end
