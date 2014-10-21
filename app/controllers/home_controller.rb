class HomeController < ApplicationController
 
  layout "adminlayout"

  def index

  end 

  def login
    
  end

  def signup
      @user = User.new
  end

  def authentication

    if params[:emailid].present? && params[:emailid].present?
      
      @pass = User.select(:password).find_by email: params[:emailid]
      
      if @pass != nil
    
        if(  @pass.password == params[:password])
          session[:user_id] = params[:emailid]
          
          redirect_to :controller => 'dashbord', :action => 'index'
        else 
          flash[:error] = "password is wrong"
          redirect_to :action => 'login'
        end 
    
      else
        flash[:error] = "email / password is wrong"
        redirect_to :action => 'login'
      end

    else      
      flash[:error] = "email / password can't be blank"
      redirect_to :action => 'login'
    end

  end

  def regsuccess
    r = User.create(user_params)
 
    #r = User.create :name => params[:name],:password => params[:password] ,:gender =>  params[:gender],:qualification => params[:qualification],:email => params[:email], :mobino => params[:mobino]
    
    #r.build_addr :permenant_address => params[:permenant_address],:current_address => params[:current_address]
    #r.save
    
    if !r.valid? 
      flash[:error] = r.errors.full_messages.join("<br>").html_safe
    end

    redirect_to :action => 'signup'
  end	

  private
    
    def user_params
      params.require(:user).permit(:name, :password, :gender, :qualification, :email, :mobino)
    end  
    
end