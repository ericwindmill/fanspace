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

require 'test_helper'

class SetlistSongTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
