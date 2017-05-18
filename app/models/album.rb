# == Schema Information
#
# Table name: albums
#
#  id            :integer          not null, primary key
#  title         :string           not null
#  cover_art_url :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Album < ApplicationRecord
  validates :title, :cover_art_url, presence: true;
  
  has_many :songs

end
