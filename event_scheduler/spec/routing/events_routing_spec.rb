require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe EventsController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "events", :action => "index").should == "/events"
    end

    it "maps #new" do
      route_for(:controller => "events", :action => "new").should == "/events/new"
    end

    it "maps #show" do
      route_for(:controller => "events", :action => "show", :id => "1").should == "/events/1"
    end

    it "maps #edit" do
      route_for(:controller => "events", :action => "edit", :id => "1").should == "/events/1/edit"
    end

    it "maps #create" do
      route_for(:controller => "events", :action => "create").should == {:path => "/events", :method => :post}
    end

    it "maps #update" do
      route_for(:controller => "events", :action => "update", :id => "1").should == {:path =>"/events/1", :method => :put}
    end

    it "maps #destroy" do
      route_for(:controller => "events", :action => "destroy", :id => "1").should == {:path =>"/events/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/events").should == {:controller => "events", :action => "index"}
    end

    it "generates params for #new" do
      params_from(:get, "/events/new").should == {:controller => "events", :action => "new"}
    end

    it "generates params for #create" do
      params_from(:post, "/events").should == {:controller => "events", :action => "create"}
    end

    it "generates params for #show" do
      params_from(:get, "/events/1").should == {:controller => "events", :action => "show", :id => "1"}
    end

    it "generates params for #edit" do
      params_from(:get, "/events/1/edit").should == {:controller => "events", :action => "edit", :id => "1"}
    end

    it "generates params for #update" do
      params_from(:put, "/events/1").should == {:controller => "events", :action => "update", :id => "1"}
    end

    it "generates params for #destroy" do
      params_from(:delete, "/events/1").should == {:controller => "events", :action => "destroy", :id => "1"}
    end
  end
end
