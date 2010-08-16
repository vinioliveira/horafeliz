class Periodo < ActiveRecord::Base

    validates_presence_of :type, :user, :date

    belongs_to :user

    def total_horas
      diferenca = checkout.hour - checkin.hour  
      return diferenca;
    end

end

