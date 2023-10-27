class UserRegistrationController < ApplicationController
  class UserRegistrationController < ApplicationController
    def new
      @client_profile = ClientProfile.new
    end

    def create
      @client_profile = ClientProfile.new(client_profile_params)
      if @client_profile.save
        session[:user_id] = @client_profile.id
        redirect_to root_path, notice: 'Account created successfully!'
      else
        render :new
      end
    end

    def login
    end

    def authenticate
      @client_profile = ClientProfile.find_by(email: params[:email])
      if @client_profile && @client_profile.authenticate(params[:password])
        session[:user_id] = @client_profile.id
        redirect_to root_path, notice: 'Logged in successfully!'
      else
        flash.now.alert = 'Invalid email or password'
        render :login
      end
    end

    def logout
      session[:user_id] = nil
      redirect_to root_path, notice: 'Logged out successfully!'
    end

    private

    def client_profile_params
      params.require(:client_profile).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
  end

end
