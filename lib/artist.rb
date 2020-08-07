require 'pry'
class Artist
     attr_accessor :name
     def initialize name
         @name = name
         @discogrophy = Array.new
     end

     def songs
        Song.all.select do |x| #takes the Song class and gives an array
            x.artist == self        #filters the matching artst with matching class instance "artist"
        end
     end

     def add_song song
        song.artist = self
        self.songs << song
     end

     def add_song_by_name song_name
        songname = Song.new song_name
        songname.artist = self
        self.songs << songname
     end

     def self.song_count
        Song.all.count
     end

end