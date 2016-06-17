require('minitest/autorun')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class TestRoom < MiniTest::Test
  def setup
    @room = Room.new(name: "Pop", price: 20)
    @guest = Guest.new(first_name: "John", last_name: "Smith", age: 26, money: 100)
    @song = Song.new(title: "Like A Prayer", artist: "Madonna", genre: "Pop")
  end

  def test_room_has_name
    assert_equal("Pop", @room.name)
  end

  def test_room_has_price
    assert_equal(20, @room.price)
  end

  def test_room_has_empty_songs_array
    assert_equal([], @room.songs)
  end

  def test_room_has_empty_guests_array
    assert_equal([], @room.guests)
  end

  def test_room_add_song
    assert_equal([@song], @room.add_song(@song))
  end

  def test_room_check_in_guest
    assert_equal([@guest], @room.check_in(@guest))
  end

  def test_room_search_for_guest
    @room.check_in(@guest)
    assert_equal(true, @room.search_for_guest(@guest))
  end

  # def test_room_check_out_guest
  #   assert_equal(nil, @room.check_out(@guest))
  # end
end