class RegistrarPeriodoController < ApplicationController
  before_filter :authenticate_user!

  def checkin 
    registro = params["registrar_periodo_controle"]
    user = current_user
    if registro[:checkin]
   
       if  user.checkin Date.today.to_s, registro["checkin"] 
         flash[:notice] = "Checkin realizado com sucesso!"
       end

    else 
     
      if  user.checkout Date.today.to_s, registro["checkout"], registro["periodo_id"]
       flash[:notice] = "Checkin realizado com sucesso!"
      end
    
    end

   redirect_to :controller => :relatorio_horas, :action => :visualizar
  
  end 

end
