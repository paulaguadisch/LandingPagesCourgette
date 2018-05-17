require 'twitter'
require 'dotenv/load'

class SendTweetTarget

	attr_accessor :client

    def perform
    	log_in_to_twitter
    	send_tweet_students
    	sleep 120
    	send_tweet_workers
    	sleep 120
    	send_tweet_entrepreneurs
    end

    def log_in_to_twitter
		@client = Twitter::REST::Client.new do |config|
			config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
			config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
			config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
			config.access_token_secret = ENV['TWITTER_TOKEN_SECRET']
		end
    end
    
    def send_tweet_students
    	@results = []
		search_terms = ["bde", "université", "étudiants"]
		search_terms.each do |term|
		    @search = @client.user_search(term)
		    @search.each do |user|
		        user_tweet = user.screen_name
		        @results.push(user_tweet)
		    end  
		end

		@results.each do |user|
		    @client.update("@#{user} Une formation gratuite au code pour devenir dev en 3 mois? C'est possible! Viens découvrir THP: https://whispering-escarpment-53880.herokuapp.com/lp1 #bootcamp #coding")
		    sleep 120
		end
    end	

    def send_tweet_workers
    	@results = []
		search_terms = ["emploi", "formation"]
		#trois types de users qu'on vise: les comptes twitter d'unions étudiantes; ceux en rapport avec l'entreprenariat; et ceux en rapport avec l'emploi
		search_terms.each do |term|
		    @search = @client.user_search(term)
		    @search.each do |user|
		        user_tweet = user.screen_name
		        @results.push(user_tweet)
		    end  
		end

		@results.each do |user|
		    @client.update("@#{user} Envie de changer de vie? C'est possible! Venez découvrir THP: https://whispering-escarpment-53880.herokuapp.com/lp3 #bootcamp #coding")
		    sleep 120
		end
    end	


    def send_tweet_entrepeneurs
    	@results = []
		search_terms = ["start up", "entreprenariat", "entreprise", "entreprendre"]
		#trois types de users qu'on vise: les comptes twitter d'unions étudiantes; ceux en rapport avec l'entreprenariat; et ceux en rapport avec l'emploi
		search_terms.each do |term|
		    @search = @client.user_search(term)
		    @search.each do |user|
		        user_tweet = user.screen_name
		        @results.push(user_tweet)
		    end  
		end

		@results.each do |user|
		    @client.update("@#{user} Apprenez à coder pour booster votre entreprise! Venez découvrir THP: https://whispering-escarpment-53880.herokuapp.com/lp2 #bootcamp #coding")
		    sleep 120
		end
    end	

end


