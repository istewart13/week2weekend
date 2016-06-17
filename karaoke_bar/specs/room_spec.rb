require('minitest/autorun')
require_relative('../room')

class TestRoom < MiniTest::Test
  def setup
    @room = Room.new(name: "Pop", price: 20)
  end

  def test_room_has_name
    assert_equal("Pop", @room.name)
  end

  def test_room_has_price
    assert_equal(20, @room.price)
  end

  def test_room_has_empty_song_array
    assert_equal([], @room.songs)
  end
end