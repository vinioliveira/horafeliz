class Periodo < ActiveRecord::Base

    validates_presence_of :type, :user, :date

    belongs_to :user

    def total_horas
      if checkout 
        diferenca = checkout - checkin  
        return diferenca / 3600;
      end
      return 0
    end

end

