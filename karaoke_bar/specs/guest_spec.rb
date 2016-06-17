require('minitest/autorun')
require_relative('../guest')

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new(first_name: "John", last_name: "Smith", age: 26, money: 100)
  end

  def test_guest_has_first_name
    assert_equal("John", @guest.first_name)
  end

  def test_guest_has_last_name
    assert_equal("Smith", @guest.last_name)
  end

  def test_guest_has_age
    assert_equal(26, @guest.age)
  end

  def test_guest_has_money
    assert_equal(100, @guest.money)
  end
end