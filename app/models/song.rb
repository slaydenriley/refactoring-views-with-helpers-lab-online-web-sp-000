class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist.name if artist
  end

  def artist_name=(name)
    a = Artist.find_or_create_by(name: name)
    a = self.artist
  end
end
