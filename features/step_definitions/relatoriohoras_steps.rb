Given /^Exista o usuario de login "([^"]*)"$/ do |arg1|
  @user = User.new()
  @user.login = arg1
  @user.senha = "123"
  @user.save!
end

Given /^ele tem registrado as horas para o dia "([^"]*)" com entrada "([^"]*)" e saida "([^"]*)" e entrada "([^"]*)" e saida "([^"]*)"$/ do |arg1, arg2, arg3, arg4, arg5|

  dateCheckin = DateTime.strptime("#{arg1} #{arg2}","%Y-%m-%d %H:%M");
  dateCheckout = DateTime.strptime("#{arg1} #{arg3}","%Y-%m-%d %H:%M");
  hora = Periodo.new
  hora.date = dateCheckin
  hora.checkin = dateCheckin
  hora.checkout = dateCheckout
  hora.user = @user
  hora.save!
 
  dateCheckin = DateTime.strptime("#{arg1} #{arg4}","%Y-%m-%d %H:%M");
  dateCheckout = DateTime.strptime("#{arg1} #{arg5}","%Y-%m-%d %H:%M");
  hora = Periodo.new
  hora.date = dateCheckin
  hora.checkin = dateCheckin
  hora.checkout = dateCheckout
  hora.user = @user
  hora.save!
end

When /^o usuario "([^"]*)" acessa o seu relatorio de horas$/ do |arg1|
  visit url_for :controller => :relatorio_horas, :action => :visualizar
end

Then /^ele visualiza as suas horas com apenas o dia "([^"]*)"$/ do |arg1|

  response.should have_selector("#semana", :count => 1)
    response.should have_selector("#semana") do |semana|
      semana.should have_selector("td#dia",:count => 1)
      semana.should have_selector("td#dia",:content => arg1)
    end
end

Then /^com "([^"]*)" horas para o intervalo de "([^"]*)" a "([^"]*)"$/ do |arg1, arg2, arg3|
  response.should have_selector("tr#intervalo") do |tr|
    tr.should have_selector("td#checkin",:content => arg2)
    tr.should have_selector("td#checkout",:content => arg3)
    tr.should have_selector("span#total_hora",:content => arg1)
  end

end

Then /^com o total de horas para o dia e para a semana de "([^"]*)" horas$/ do |arg1|
  response.should have_selector("tr#intervalo") do |tr|
    tr.should have_selector("td#total_dia",:content => arg1)
  end
end

