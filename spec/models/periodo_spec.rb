require 'spec_helper'

describe Periodo do
  before(:each) do
    @valid_attributes = {
      :user => User.new, :tipo => "CHECKIN", :date => DateTime.new
    }
  end

  it "should create a new instance given valid attributes" do
    Periodo.create!(@valid_attributes)
  end
end

