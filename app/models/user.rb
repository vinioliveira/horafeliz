class User < ActiveRecord::Base

  validates_presence_of :login, :senha
  has_many :horas
end

