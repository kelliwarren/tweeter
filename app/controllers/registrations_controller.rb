class RegistrationsController < Devise::RegistrationsController

 # def create
 #    super
 #    if @user.save
 #      UserMailer.welcome(current_user).deliver
 #      redirect_to root_path, notice: 'welcome'
 #    end
 #  end



  protected


  def after_sign_up_path_for(resource)
    UserMailer.welcome(current_user).deliver
    user_path(current_user)
  end

 
end