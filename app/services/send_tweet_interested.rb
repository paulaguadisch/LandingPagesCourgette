require 'twitter'
require 'dotenv/load'

class SendTweetInterested

	attr_accessor :client

    def perform
    	log_in_to_twitter
    	send_tweet_studies
    	sleep 120
    	send_tweet_reconversion
    	sleep 120
    	send_tweet_work
    end

    def log_in_to_twitter
		@client = Twitter::REST::Client.new do |config|
			config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
			config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
			config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
			config.access_token_secret = ENV['TWITTER_TOKEN_SECRET']
		end
    end
    
    def send_tweet_studies
		@client.search("formation -rt", lang: "fr", result_type: "recent").take(10).collect do | tweet | 
		@client.update("@#{tweet.user.screen_name} Une formation gratuite au code pour devenir dev en 3 mois? C'est possible! Viens découvrir THP: https://whispering-escarpment-53880.herokuapp.com/lp1", in_reply_to_status_id: tweet.id, trim_user: true)
		sleep 120
		end
    end	

    def send_tweet_reconversion
		@client.search("reconversion -rt", lang: "fr", result_type: "recent").take(10).collect do | tweet | 
		@client.update("@#{tweet.user.screen_name} Envie de changer de vie? C'est possible! Venez découvrir THP: https://whispering-escarpment-53880.herokuapp.com/lp3", in_reply_to_status_id: tweet.id, trim_user: true)
		sleep 120
		end
    end	

    def send_tweet_work
		@client.search("entrepreneur -rt", lang: "fr", result_type: "recent").take(10).collect do | tweet | 
		@client.update("@#{tweet.user.screen_name} Apprenez à coder pour booster votre entreprise! Venez découvrir THP: https://whispering-escarpment-53880.herokuapp.com/lp2", in_reply_to_status_id: tweet.id, trim_user: true)
		sleep 120
		end
    end	

end
