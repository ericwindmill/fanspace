# == Schema Information
#
# Table name: setlists
#
#  id             :integer          not null, primary key
#  city           :string           not null
#  state          :string
#  date           :date             not null
#  venue          :string           not null
#  poster_img_url :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  country        :string
#

class Setlist < ApplicationRecord
  validates :city, :date, :venue, :poster_img_url, presence: true
  
  has_many :setlist_songs
  has_many :songs, :through => :setlist_songs, :source => :song
  has_many :attends
  has_many :users, :through => :attends, :source => :user
  has_many :comments
  

end
