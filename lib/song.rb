class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(song_name_string)
    song = self.new
    song.name = song_name_string
    song
  end

  def self.create_by_name(song_name_string)
    song = self.new
    song.name = song_name_string
    song.save
    song
  end

  def self.find_by_name(song_name_string)
    self.all.detect {|i| i.name == song_name_string}
  end

  def self.find_or_create_by_name(find_this_song)
    self.find_by_name(find_this_song) || self.create_by_name(find_this_song)
  end

end
