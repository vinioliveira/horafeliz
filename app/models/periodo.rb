class Periodo < ActiveRecord::Base

    validates_presence_of :type, :user, :date
    named_scope :registro_dia, :conditions =>{:date =>Date.today}
    named_scope :ultimo_registro_dia, :conditions => {:date => Date.today, :checkout => nil}
    belongs_to :user

    def total_horas
      if checkout 
        diferenca = checkout - checkin  
        return diferenca / 3600;
      end
      return 0
    end

end

