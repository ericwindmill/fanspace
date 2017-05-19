# == Schema Information
#
# Table name: attends
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  setlist_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Attend < ApplicationRecord
  validates :setlist_id, :user_id, presence: true;

  belongs_to :setlist
  belongs_to :user
end
