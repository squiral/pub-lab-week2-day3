require('minitest/autorun')
require('minitest/rg')

require_relative('../pub.rb')
require_relative('../drink.rb')

class TestPub < MiniTest::Test

  def setup
    @pub = Pub.new("CiderClan")
  end

  def test_name
    assert_equal("CiderClan", @pub.name)
  end

  def test_till_exists
    assert_equal(0, @pub.till)
  end

  def test_no_drinks
    assert_equal(0, @pub.drinks.length)
  end








end
