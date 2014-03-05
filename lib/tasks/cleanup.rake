 desc "Clean up the tweets without users" 
  task cleanup: :environment do |s|

  tweets = Tweet.where(user_id: nil)
  tweets.destroy_all    
 
end