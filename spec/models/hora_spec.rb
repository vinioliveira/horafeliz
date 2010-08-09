require 'spec_helper'

describe Hora do
  before(:each) do
    @valid_attributes = {
      :user => User.new, :tipo => "CHECKIN", :date => DateTime.new
    }
  end

  it "should create a new instance given valid attributes" do
    Hora.create!(@valid_attributes)
  end
end

