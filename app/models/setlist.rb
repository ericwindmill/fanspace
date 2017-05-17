# == Schema Information
#
# Table name: setlists
#
#  id             :integer          not null, primary key
#  city           :string           not null
#  state          :string           not null
#  date           :date             not null
#  venue          :string           not null
#  poster_img_url :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Setlist < ApplicationRecord
  validates :city, :date, :venue, :poster_img_url, presence: true
  
  has_many :songs, :through => :setlist_songs, :source => :songs
  

end