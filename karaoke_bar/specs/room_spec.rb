require('minitest/autorun')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class TestRoom < MiniTest::Test
  def setup
    @room = Room.new(name: "Pop", price: 20, capacity: 2)
    @guest = Guest.new(first_name: "John", last_name: "Smith", age: 26, money: 100, favourite_song: "Like A Prayer")
    @another_guest = Guest.new(first_name: "Mary", last_name: "Smyth", age: 32, money: 200, favourite_song: "Born To Run")
    @third_guest = Guest.new(first_name: "Tommy", last_name: "Smith", age: 48, money: 400, favourite_song: "Barbie Girl")
    @song = Song.new(title: "Like A Prayer", artist: "Madonna", genre: "Pop")
    @another_song = Song.new(title: "Born To Run", artist: "Bruce Springsteen", genre: "Rock")
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

  def test_room_capacity
    assert_equal(2, @room.capacity)
  end

  def test_current_guest_nums_is_incremented
    @room.check_in(@guest)
    assert_equal(1, @room.current_guest_nums)
  end

  def test_current_guest_nums_under_capacity
    assert_equal(@guest, @room.check_in(@guest))
  end

  def test_current_guest_nums_over_capacity
    @room.check_in(@guest)
    @room.check_in(@another_guest)
    assert_equal("We're over capacity, you can't come in", @room.check_in(@third_guest))
  end

  def test_room_add_song
    assert_equal(@song, @room.add_song(@song))
  end

  def test_room_check_in_guest
    assert_equal(@guest, @room.check_in(@guest))
  end

  def test_room_guests_charged_at_check_in
    assert_equal(80, @room.charge_guest(@guest))
  end

  def test_room_search_for_guest
    @room.check_in(@guest)
    assert_equal(true, @room.search_for_guest(@guest))
  end

  def add_two_songs
    @room.add_song(@song)
    @room.add_song(@another_song)
  end

  def test_room_check_out_guest
    @room.check_in(@guest)
    @room.check_in(@another_guest)
    assert_equal(@guest, @room.check_out(@guest))
  end

  def test_room_current_song_empty
    assert_equal(nil, @room.current_song)
  end

  def test_room_current_song_empty
    assert_equal(nil, @room.current_song)
  end

  def test_room_current_song_not_empty
    add_two_songs()
    assert_equal(@song, @room.current_song)
  end

  def test_room_next_song
    add_two_songs()
    assert_equal(@another_song, @room.next_song())
  end

  def test_remove_song
    add_two_songs()
    assert_equal(@song, @room.remove_song(@song))
  end

  def test_choose_song_and_not_found
    @room.add_song(@song)
    assert_equal("Sorry, we don't have that song", @room.choose_song(@another_song))
  end

  def test_choose_song_and_found
    add_two_songs()
    assert_equal(@another_song, @room.choose_song(@another_song))
  end

  def test_guest_favourite_song_is_on
    @room.check_in(@guest)
    @room.add_song(@song)
    assert_equal("WHOOOO, I love this song", @room.favourite_song_on)
  end

  def test_guest_favourite_song_is_on
    @room.check_in(@another_guest)
    @room.add_song(@song)
    assert_equal("", @room.favourite_song_on)
  end
end