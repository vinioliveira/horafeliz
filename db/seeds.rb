# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
  user = User.create!(:login => 'user',:senha => "123")
  dateCheckin = DateTime.strptime("2010-01-01 08:00","%Y-%m-%d %H:%M");
  dateCheckout = DateTime.strptime("2010-01-01 12:00","%Y-%m-%d %H:%M");
  hora = Hora.new
  hora.tipo = "CHECKIN"
  hora.date = dateCheckin
  hora.user = user
  hora.save!
  horaSaida = Hora.new
  horaSaida.tipo = "CHECKOUT"
  horaSaida.date = dateCheckout
  horaSaida.user = user
  horaSaida.save!

  dateCheckin = DateTime.strptime("2010-01-01 13:00","%Y-%m-%d %H:%M");
  dateCheckout = DateTime.strptime("2010-01-01 18:00","%Y-%m-%d %H:%M");
  hora = Hora.new
  hora.tipo = "CHECKIN"
  hora.date = dateCheckin
  hora.user = user
  hora.save!
  horaSaida = Hora.new
  horaSaida.tipo = "CHECKOUT"
  horaSaida.date = dateCheckout
  horaSaida.user = user
  horaSaida.save!

