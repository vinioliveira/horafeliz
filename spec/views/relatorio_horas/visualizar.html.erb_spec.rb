require 'spec_helper'

describe "/relatorio_horas/visualizar" do
  before(:each) do
    render 'relatorio_horas/visualizar'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/relatorio_horas/visualizar])
  end
end
