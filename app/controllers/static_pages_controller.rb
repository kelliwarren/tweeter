class StaticPagesController < ApplicationController
  layout 'tweeter'
  
  def welcome
    # UserMailer.welcome(current_user).deliver
    # redirect_to root_path, notice: 'welcome'
  end

  def about
  end

  def tos
  end

  def privacy
  end

  def newsletter
    @newsletter = Newsletter.new
    if request.post?
      @newsletter.assign_attributes(newsletter_params)
      if @newsletter.save
        redirect_to root_path, notice: "You will get the newsletter soon!"
    else
      flash[:alert] = "oops"
      render contact
      end
    end
  end

  private

  def newsletter_params
    params.require(:newsletter).permit(:name, :email)
  end

end
