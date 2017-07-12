class Scrabble

  def score(word)
    if word == "" || word == nil
      0
    else
      split_word_collection = word.upcase.chars
      point_value_collection = []
      split_word_collection.each do |letter|
        point = point_values[letter]
        point_value_collection << point
      end
      point_value_collection
      sum = 0
      point_value_collection.each do |num|
        sum += num
      end
      sum
    end
  end

  def score_with_multipliers(word, multiplier_collection)
    split_word_collection = word.upcase.chars
    multiplier_hash = Hash[split_word_collection.zip(multiplier_collection)]
    #change split_word_collection to point collection
    point_value_collection =[]
    multiplier_hash.each do |point, multiplier|
      new_value = point * multiplier_hash
      point_value_collection << new_value
    end
    sum = 0
    point_value_collection.each do |num|
      sum += num
    end
    sum
  end

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end
end
