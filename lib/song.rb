require pry
class Song 
  
  attr_accessor :name, :artist, :genre 

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count ={}
  @@artist_count = {}
   
    
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre 
      @@genres << genre
      @@artists << artist
      @@count += 1
    end
    
    def self.count
      @@count
    end
    
    def self.genres 
      @@genres.uniq!
    end
    
    def self.artists
      @@artists.uniq
    end
    
    def self.genre_count
      @@genres.collect do |genre|
      @@genre_count[genre]= @@genres.count(genre)
    end
    @@genre_count
  end
    
    def self.artist_count
     @@artists.collect do |artist|
      @@artist_count[artist] = @@artists.count(artist)
      binding.pry
    end
    @@artist_count
  end
end
