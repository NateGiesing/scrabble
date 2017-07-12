gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/emoji'
require 'pry'

class ScrabbleTest < Minitest::Test

  def test_it_can_score_a_single_letter
    game = Scrabble.new

    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_a_word
    game = Scrabble.new

    assert_equal 8, game.score("hello")
  end

  def test_it_can_score_empty_string_as_zero
    game = Scrabble.new

    assert_equal 0, game.score("")
  end

  def test_it_can_score_nil
    game = Scrabble.new

    assert_nil game.score(nil)
  end

  def test_not_case_sensitive
    game = Scrabble.new

    assert_equal 1, game.score("A")
    assert_equal 1, game.score("a")
    assert_equal 4, game.score("F")
    assert_equal 4, game.score("f")
  end

  # def test_score_with_multipliers
  #   game = Scrabble.new
  #
  #   assert_equal
  # end
end
