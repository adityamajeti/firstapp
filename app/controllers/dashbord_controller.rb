class DashbordController < ApplicationController
  	layout "signinlayout"
  def index
  	@users = User.all
  end
end