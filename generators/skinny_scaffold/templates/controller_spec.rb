require File.dirname(__FILE__) + '/../spec_helper'

describe <%= controller_class_name %>Controller do
  def valid_attributes(args = {})
    {
      # Add valid attributes for the your params[:<%= singular_name %>] here!
    }.merge(args)
  end
  
  describe "GET :index" do
    before(:each) do
      @<%= plural_name %> = stub_index(<%= class_name %>)
    end
      
    it_should_find :<%= plural_name %>
    it_should_assign :<%= plural_name %>
    it_should_render :template, "index"
  end
  
  describe "GET :new" do
    before(:each) do
      @<%= singular_name %> = stub_new(<%= class_name %>)
    end
    
    it_should_initialize :<%= singular_name %>
    it_should_assign :<%= singular_name %>
    it_should_render :template, "form"
  end
  
  describe "POST :create" do
    describe "when successful" do
      before(:each) do
        @<%= singular_name %> = stub_create(<%= class_name %>)
      end
      
      it_should_initialize :<%= singular_name %>
      it_should_save :<%= singular_name %>
      it_should_redirect_to { <%= singular_name %>_url(@<%= singular_name %>) }
    end
    
    describe "when unsuccessful" do
      before(:each) do
        @<%= singular_name %> = stub_create(<%= class_name %>, :return => :false)
      end
      
      it_should_initialize :<%= singular_name %>
      it_should_assign :<%= singular_name %>
      it_should_render :template, "form"
    end
  end
  
  describe "GET :show" do
    before(:each) do
      @<%= singular_name %> = stub_show(<%= class_name %>)
    end
    
    it_should_find :<%= singular_name %>
    it_should_assign :<%= singular_name %>
    it_should_render :template, "show"
  end
  
  describe "GET :edit" do
    before(:each) do
      @<%= singular_name %> = stub_edit(<%= class_name %>)
    end
    
    it_should_find :<%= singular_name %>
    it_should_assign :<%= singular_name %>
    it_should_render :template, "form"
  end
  
  describe "PUT :update" do
    describe "when successful" do
      before(:each) do
        @<%= singular_name %> = stub_update(<%= class_name %>)
      end
      
      it_should_find :<%= singular_name %>
      it_should_update :<%= singular_name %>
      it_should_redirect_to { <%= singular_name %>_url(@<%= singular_name %>) }
    end
    
    describe "when unsuccessful" do
      before(:each) do
        @<%= singular_name %> = stub_update(<%= class_name %>, :return => :false)
      end
      
      it_should_find :<%= singular_name %>
      it_should_assign :<%= singular_name %>
      it_should_render :template, "form"
    end
  end
  
  describe "DELETE :destroy" do
    before(:each) do
      @<%= singular_name %> = stub_destroy(<%= class_name %>)
    end
    
    it_should_find :<%= singular_name %>
    it_should_destroy :<%= singular_name %>
    it_should_redirect_to { <%= plural_name %>_url }
  end
end