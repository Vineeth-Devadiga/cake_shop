class AdminController < ApplicationController
  def login
      if request.post?
        if params[:username]=="admin" && params[:password]=="vineeth"
          session[:admin]="admin"
          redirect_to :controller=>:stores, :action=>"index"
        else
          flash[:notice]="Invalid Name/Password"
          render :action=>"login"
        end
      end
  
    end
    def logout
      session[:admin]=nil
      flash[:notice]="Logged out"
      redirect_to :action=>"login"
    end
  
end
