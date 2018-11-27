# Prob 7: Neutralizer

def neutralize(sentence)
  words = sentence.split(' ')

  new_arr = []
  words.each do |word|
    new_arr << word if negative?(word) == false
  end

  new_arr.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.