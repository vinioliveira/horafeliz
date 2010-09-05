class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :http_authenticatable, :token_authenticatable, :confirmable, :lockable, :timeoutable and :activatable
  devise :registerable, :database_authenticatable, :recoverable,
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation

  def checkin data, hora
    periodo = Periodo.new
    periodo = registrar_data_usuario periodo, data
    periodo.checkin = DateTime.strptime("#{data} #{hora}","%Y-%m-%d %H:%M")
    periodo.save!
  end

  def checkout data, hora, id
    periodo = Periodo.find id
    periodo = registrar_data_usuario periodo, data
    periodo.checkout = DateTime.strptime("#{data} #{hora}","%Y-%m-%d %H:%M")
    periodo.save!
  end


  private 
  def registrar_data_usuario periodo, data
    
    periodo.user = self
    periodo.date = DateTime.strptime("#{data} 00:00","%Y-%m-%d %H:%M")
    periodo   
  end
end
