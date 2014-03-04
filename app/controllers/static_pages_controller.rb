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
end
