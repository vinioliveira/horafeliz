
Given /^Exista o usuário de login "([^""]*)"$/ do |arg1|
  @user = User.new
  @user.login = arg1
  @user.email ="horafeliz@horafeliz.com.br"
  @user.password = "123456"
  @user.save!
end

Given /^a hora corrente seja "([^""]*)" e o dia seja "([^""]*)"$/ do |arg1, arg2|
    visit url_for :controller => :registrar_periodo, :action => :checkin
    fill_in "Checkin" ,:with => arg1
    # @hora_corrente  = DateTime.strptime("#{arg2} #{arg1}","%Y-%m-%d %H:%M");
end

When /^o usuario efetuar o checkin$/ do
    click_button "Checkin"
    # @user.checkin @hora_corrente
end

Then /^ele visualiza a mensagem "([^""]*)"$/ do |arg1|
  
  visit url_for :controller => :registrar_periodo, :action => :checkin
  fill_in "Chekckin", :with => arg1
  response.should contain arg1
    
end

Then /^deve ser exibido na tabela o checkin com a hora "([^""]*)" para o dia "([^""]*)"$/ do |arg1, arg2|
    pending # express the regexp above with the code you wish you had
end

