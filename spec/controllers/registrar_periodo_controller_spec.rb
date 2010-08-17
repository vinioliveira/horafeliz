require 'spec_helper'

describe RegistrarPeriodoController do

  #Delete these examples and add some real ones
  it "should use RegistrarPeriodoController" do
    controller.should be_an_instance_of(RegistrarPeriodoController)
  end


  describe "GET ':checkin'" do
    it "should be successful" do
      get ':checkin'
      response.should be_success
    end
  end
end
