class Newsletter < ActiveRecord::Base

after_create :email_newsletter

  private

   def email_newsletter
    UserMailer.newsletter(self).deliver
  end
end
