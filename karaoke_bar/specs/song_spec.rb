require('minitest/autorun')
require_relative('../song')

class TestSong < MiniTest::Test
  def setup
    @song = Song.new(title: "Like A Prayer", artist: "Madonna", genre: "Pop")
  end

  def test_guest_has_title
    assert_equal("Like A Prayer", @song.title)
  end

  def test_guest_has_artist
    assert_equal("Madonna", @song.artist)
  end

  def test_guest_has_genre
    assert_equal("Pop", @song.genre)
  end
end