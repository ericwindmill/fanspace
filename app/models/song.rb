# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  album      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ApplicationRecord
  validates :title, uniqueness: true
  validates :album_id, presence: true
  
  belongs_to :album

  has_many :setlist_songs
  has_many :setlists, :through => :setlist_songs, :source => :setlist

end