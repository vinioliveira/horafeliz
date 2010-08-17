require 'spec_helper'

describe "/registrar_periodo/:checkin" do
  before(:each) do
    render 'registrar_periodo/:checkin'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/registrar_periodo/:checkin])
  end
end
