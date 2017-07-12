gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_a_two_letter_word
    assert_equal 4, Scrabble.new.score("ab")
    assert_equal 11, Scrabble.new.score("zo")
  end

  def test_it_can_score_five_letter_words
    assert_equal 11, Scrabble.new.score("cakes")
    assert_equal 10, Scrabble.new.score("pully")
  end

  def test_score_returns_zero_if_no_word_is_given
    assert_equal 0, Scrabble.new.score("")
    assert_equal 0, Scrabble.new.score(nil)
  end

  def test_word_with_multipliers_returns_score
    assert_equal 9, Scrabble.new.score_with_multipliers("hello", [1, 2, 1, 1, 1])
  end

end
