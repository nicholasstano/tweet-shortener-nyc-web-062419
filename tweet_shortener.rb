require 'pry'
require 'byebug'

def dictionary
	{
		"hello" => "hi",
		"to" => "2",
		"two" => "2",
		"too" => "2",
		"four" => "4",
		"for" => "4",
		"be" => "b",
		"you" => "u",
		"at" => "@",
		"and" => "&"
	}
end

def word_substituter(string)

	words_array = string.split(" ")
	dictionary_words = dictionary
	final_array = words_array.collect do |word|
		#binding.pry
		lookup = dictionary_words[word.downcase]
		if lookup
			final_word = lookup
		else
			final_word = word
		end
		final_word
	end
	final_array.join(" ")
end

def bulk_tweet_shortener(tweets)
	tweets.each do |tweet|
		puts word_substituter(tweet)
	end
end

def selective_tweet_shortener(tweet)
	if tweet.length > 140
		word_substituter(tweet)
	else
		tweet
	end
end

def shortened_tweet_truncator(tweet)
	if tweet.length < 140
		tweet
	else 
		tweet[1..137] + "..."
	end
end



