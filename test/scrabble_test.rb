gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/emoji'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    score = Scrabble.new
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_a_word
    word = Scrabble.new

    assert_equal 8, word.score("hello")
  end

  def test_it_can_score_empty_string_as_zero
    score = Scrabble.new

    assert_equal 0, score.score("")
  end

  def test_it_can_score_nil
    score = Scrabble.new

    assert_nil score.score(nil)
  end
end
