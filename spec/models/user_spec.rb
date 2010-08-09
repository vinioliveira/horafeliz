require 'spec_helper'

describe User do
  before(:each) do
    @valid_attributes = {
      :login => "test", :senha => "test"
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end

  it "deve efeutar o check in das horas" do

  end
end

