# Write your code here.
def dictionary
  {
    "hello": "hi",
    "to": "2",
    "two": "2",
    "too": '2',
<<<<<<< HEAD
    "for": "4",
    "For": "4",
=======
    "for": "4", 
>>>>>>> f0e34c7efe759b585465ad46beb8a001f457327d
    "four": '4',
    'be': 'b',
    'you': 'u',
    "at": "@", 
    "and": "&"
  }
end

def word_substituter(tweets)
  result=[]
   array_keys=dictionary.keys
    tweets.split.each do |word|
      if array_keys.include?(word.to_sym)
        result.push(dictionary[word.to_sym])
      else
        result.push(word)
      end
    end
    result.join(" ")
end

def selective_tweet_shortener(tweets)
  if tweets.length <= 140
    return tweets
  else
    word_substituter(tweets)
  end
end

def bulk_tweet_shortener(array_tweets)
<<<<<<< HEAD
   array_tweets.each do |tweets|
     puts word_substituter(tweets)
   end
end

def shortened_tweet_truncator(tweets)
  if tweets.length > 140
    tweets[0..139]
  else
    tweets
  end
end



=======
 puts word_substituter(array_tweets.join(" "))
end

>>>>>>> f0e34c7efe759b585465ad46beb8a001f457327d
