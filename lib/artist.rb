
class Artist
    attr_accessor :name
    @@all = []

    def self.all 
        @@all
    end

    def initialize(name)
        @name = name 
        @@all << self
    end

    def new_song(title, genre)
        Song.new(title, self, genre)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        self.songs.map(&:genre)
    end

end