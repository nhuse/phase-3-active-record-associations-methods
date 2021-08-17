class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre.name
  end

  def drake_made_this
    if Artist.where(:name => "Drake").blank?
      drake = Artist.create(name: "Drake")
    end
    self.artist = drake
  end
end