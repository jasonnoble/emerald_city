require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/events/show.html.erb" do
  include EventsHelper
  before(:each) do
    assigns[:event] = @event = stub_model(Event)
  end

  it "renders attributes in <p>" do
    render
  end
end
