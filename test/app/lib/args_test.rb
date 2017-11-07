require "minitest/autorun"
require "./test/test_helper.rb"
require "./app/lib/args.rb"

#
# TDD ... the class args should be tested fully
#

class ArgsTest < Minitest::Test
  def setup
    @args = Args.new(["moo", "-i", "^apple", "orange"]) 
  end

  def test_negations
    assert_equal ["apple"], @args.negations
  end

  def test_options
    assert_equal ["-i"], @args.options
  end

  def test_values
    assert_equal ["moo", "orange"], @args.values
  end
end
