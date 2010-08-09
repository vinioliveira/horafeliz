Given /^Exista o usuario de login "([^"]*)"$/ do |arg1|
  @user = User.new()
  @user.login = arg1
  @user.senha = "123"
  @user.save!
end

Given /^ele tem registrado as horas para o dia "([^"]*)" com entrada "([^"]*)" e saida "([^"]*)" e entrada "([^"]*)" e saida "([^"]*)"$/ do |arg1, arg2, arg3, arg4, arg5|

  dateCheckin = DateTime.strptime("#{arg1} #{arg2}","%Y-%m-%d %H:%M");
  dateCheckout = DateTime.strptime("#{arg1} #{arg3}","%Y-%m-%d %H:%M");
  hora = Hora.new
  hora.tipo = "CHECKIN"
  hora.date = dateCheckin
  hora.user = @user
  hora.save!
  horaSaida = Hora.new
  horaSaida.tipo = "CHECKOUT"
  horaSaida.date = dateCheckout
  horaSaida.user = @user
  horaSaida.save!

  dateCheckin = DateTime.strptime("#{arg1} #{arg4}","%Y-%m-%d %H:%M");
  dateCheckout = DateTime.strptime("#{arg1} #{arg5}","%Y-%m-%d %H:%M");
  hora = Hora.new
  hora.tipo = "CHECKIN"
  hora.date = dateCheckin
  hora.user = @user
  hora.save!
  horaSaida = Hora.new
  horaSaida.tipo = "CHECKOUT"
  horaSaida.date = dateCheckout
  horaSaida.user = @user
  horaSaida.save!
end

When /^o usuario "([^"]*)" acessa o seu relatorio de horas$/ do |arg1|
  visit url_for :controller => :relatorio_horas, :action => :visualizar
end

Then /^ele visualiza as suas horas com apenas o dia "([^"]*)"$/ do |arg1|
  response.should have_selector("#horas") do |total|
          total.should have_selector ("#atividades_total")
    total.should contain(arg1)
  end
end

Then /^com "([^"]*)" horas para o intervalo de "([^"]*)" a "([^"]*)"$/ do |arg1, arg2, arg3|
  pending # express the regexp above with the code you wish you had
end

Then /^com o total de horas para o dia e para a semana de "([^"]*)" horas$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

