class NewviewController < ApplicationController
  #layout "adminlayout"
  def index
  	@users = User.all
  end
end
