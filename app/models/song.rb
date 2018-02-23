class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: true

  with options if: :release_year do |song|
    song.validates :released, presence: true
  end

end
