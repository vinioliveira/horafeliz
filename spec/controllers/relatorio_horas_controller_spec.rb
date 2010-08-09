require 'spec_helper'

describe RelatorioHorasController do

  #Delete these examples and add some real ones
  it "should use RelatorioHorasController" do
    controller.should be_an_instance_of(RelatorioHorasController)
  end


  describe "GET 'visualizar'" do
    it "should be successful" do
      get 'visualizar'
      response.should be_success
    end
  end
end
