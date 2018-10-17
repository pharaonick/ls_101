class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each { |line| puts line}
  end

end

happy_bday = Song.new(["happy birthday to you", "i don't want to get sued", "so i'll stop!"])

bulls_on_parade = Song.new(["they rally round the family", "with a pocket full of shells"])

happy_bday.sing_me_a_song

bulls_on_parade.sing_me_a_song