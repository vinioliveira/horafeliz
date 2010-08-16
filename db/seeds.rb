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
  periodo = Periodo.new
  periodo.date = dateCheckin
  periodo.checkin = dateCheckin
  periodo.checkout = dateCheckout
  periodo.user = user
  periodo.save!

  dateCheckin = DateTime.strptime("2010-01-01 13:00","%Y-%m-%d %H:%M");
  dateCheckout = DateTime.strptime("2010-01-01 18:00","%Y-%m-%d %H:%M");
  periodo = Periodo.new
  periodo.date = dateCheckin
  periodo.checkin = dateCheckin
  periodo.checkout = dateCheckout
  periodo.user = user
  periodo.save!









