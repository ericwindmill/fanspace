# == Schema Information
#
# Table name: setlist_songs
#
#  id         :integer          not null, primary key
#  setlist_id :integer          not null
#  song_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SetlistSong < ApplicationRecord

  belongs_to :song
  belongs_to :setlist

end
