# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
  user = User.first
  dateCheckin = DateTime.strptime("2010-01-01 08:00","%Y-%m-%d %H:%M");
  dateCheckout = DateTime.strptime("2010-01-01 12:00","%Y-%m-%d %H:%M"); 
  periodo = Periodo.new
  periodo.date = DateTime.strptime("2010-01-01 00:00","%Y-%m-%d %H:%M");
  periodo.checkin = dateCheckin
  periodo.checkout = dateCheckout
  periodo.user = user
  periodo.save!

  dateCheckin = DateTime.strptime("2010-01-01 13:00","%Y-%m-%d %H:%M");
  dateCheckout = DateTime.strptime("2010-01-01 18:00","%Y-%m-%d %H:%M");
  periodo = Periodo.new
  periodo.date =  DateTime.strptime("2010-01-01 00:00","%Y-%m-%d %H:%M");
  periodo.checkin = dateCheckin
  periodo.checkout = dateCheckout
  periodo.user = user
  periodo.save!

  dateCheckin = DateTime.strptime("2010-01-01 19:00","%Y-%m-%d %H:%M");
  dateCheckout = DateTime.strptime("2010-01-01 22:00","%Y-%m-%d %H:%M");
  periodo = Periodo.new
  periodo.date = DateTime.strptime("2010-01-01 00:00","%Y-%m-%d %H:%M");
  periodo.checkin = dateCheckin
  periodo.checkout = dateCheckout
  periodo.user = user
  periodo.save!

  dateCheckin = DateTime.strptime("2010-01-02 08:00","%Y-%m-%d %H:%M");
  dateCheckout = DateTime.strptime("2010-01-02 12:20","%Y-%m-%d %H:%M");
  periodo = Periodo.new
  periodo.date =  DateTime.strptime("2010-01-02 00:00","%Y-%m-%d %H:%M");
  periodo.checkin = dateCheckin
  periodo.checkout = dateCheckout
  periodo.user = user
  periodo.save!
  
  dateCheckin = DateTime.strptime("2010-01-02 13:20","%Y-%m-%d %H:%M");
  dateCheckout = DateTime.strptime("2010-01-02 16:30","%Y-%m-%d %H:%M");
  periodo = Periodo.new
  periodo.date =  DateTime.strptime("2010-01-02 00:00","%Y-%m-%d %H:%M");
  periodo.checkin = dateCheckin
  periodo.checkout = dateCheckout
  periodo.user = user
  periodo.save!

  dateCheckin = DateTime.strptime("2010-01-04 08:00","%Y-%m-%d %H:%M");
  dateCheckout = DateTime.strptime("2010-01-04 12:00","%Y-%m-%d %H:%M");
  periodo = Periodo.new
  periodo.date =  DateTime.strptime("2010-01-04 00:00","%Y-%m-%d %H:%M");
  periodo.checkin = dateCheckin
  periodo.checkout = dateCheckout
  periodo.user = user
  periodo.save!
  
  dateCheckin = DateTime.strptime("2010-01-04 13:00","%Y-%m-%d %H:%M");
  dateCheckout = DateTime.strptime("2010-01-04 16:30","%Y-%m-%d %H:%M");
  periodo = Periodo.new
  periodo.date =  DateTime.strptime("2010-01-04 00:00","%Y-%m-%d %H:%M");
  periodo.checkin = dateCheckin
  periodo.checkout = dateCheckout
  periodo.user = user
  periodo.save!



  dateCheckin = DateTime.strptime("2010-09-03 08:00","%Y-%m-%d %H:%M");
  dateCheckout = DateTime.strptime("2010-09-03 12:00","%Y-%m-%d %H:%M");
  periodo = Periodo.new
  periodo.date =  DateTime.strptime("2010-09-03 00:00","%Y-%m-%d %H:%M");
  periodo.checkin = dateCheckin
  periodo.checkout = dateCheckout
  periodo.user = user
  periodo.save!
  
  dateCheckin = DateTime.strptime("2010-09-03 13:00","%Y-%m-%d %H:%M");
  dateCheckout = DateTime.strptime("2010-09-03 16:30","%Y-%m-%d %H:%M");
  periodo = Periodo.new
  periodo.date =  DateTime.strptime("2010-09-03 00:00","%Y-%m-%d %H:%M");
  periodo.checkin = dateCheckin
  periodo.checkout = dateCheckout
  periodo.user = user
  periodo.save!







