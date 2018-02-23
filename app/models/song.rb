class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: true

  with_options if: :released do |song|
    song.validates :release_year, presence: true
  end

end
