class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email_address: params[:user][:email_address])
   
    # If the user does not exist
    if !user
      flash[:notice] = "This user does not exist. Please set up a new user."
      render :new, status: :unprocessable_entity 
    # If the users password does not match
    elsif user.password != params[:user][:password]
      flash[:notice] = "Incorrect password."
      render :new, status: :unprocessable_entity
    # Successful Sign in
    elsif user.present? && user.password == params[:user][:password]
      session[:user_id] = user.id
      signinpath = "http://cis3260.socs.uoguelph.ca:33015/users/" + session[:user_id].inspect
      redirect_to signinpath, notice: "Signed in"
    # Incorrect email or password
    else
      flash[:notice] = "Invalid email or password"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    # Sign Out
    session[:user_id] = nil
    redirect_to sign_in_path, notice: "Signed out"
  end

end
