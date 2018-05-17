namespace :tweeter_bots do #nom de ma catégorie de tasks
  desc "Envoyer des tweets à propos de THP aux gens qui tweetent à propos du code"
  task send_tweet_to_interested_people: :environment do #ma première task
	SendTweetInterested.new.perform
  end

  desc "Envoyer des tweets à des gens des différentes cibles"
  task send_tweet_to_targeted_people: :environment do #ma seconde task
    SendTweetTarget.new.perform
  end

end