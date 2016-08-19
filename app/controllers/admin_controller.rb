class AdminController < ApplicationController
 
 before_filter :authorize 
 
  def index
   @title = "Admin Center"
  end
end
