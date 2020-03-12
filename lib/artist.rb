require 'pry'
class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        # puts "====================="
        # binding.pry
        genre_list = []
        Song.all.each do |song| 
            # puts song.genre
            song.artist == self
            genre_list << song.genre
        end
        genre_list
        # artists_songs.each do |song|
        #     genre_list << song.genre.name
        # end
    end
end