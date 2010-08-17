class User < ActiveRecord::Base

  validates_presence_of :login, :senha
  has_many :periodos

  def checkin hora
   periodo = Periodo.new
   periodo.user = self
   periodo.date = hora
   periodo.checkin = hora
   periodo.save!
  end
end

