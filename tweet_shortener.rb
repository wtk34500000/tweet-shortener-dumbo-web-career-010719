# Write your code here.
def dictionary
  {
    "hello": "hi",
    "to": "2",
    "two": "2",
    "too": '2',
    "for": "4", 
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
 puts word_substituter(array_tweets.join(" "))
end

