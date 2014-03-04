class RegistrationsController < Devise::RegistrationsController

 # def create
 #    super
 #    if @user.save
 #      UserMailer.welcome(current_user).deliver
 #      redirect_to root_path, notice: 'welcome'
 #    end
 #  end

  def create
    super
    UserMailer.welcome(@user).deliver unless @user.invalid?
  end

  protected


  def after_sign_up_path_for(resource)
    user_path(current_user)
  end

 
end