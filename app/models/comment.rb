# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  user_id    :integer
#  setlist_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  validates :setlist_id, :user_id, :body, presence: true;

  belongs_to :user
  belongs_to :setlist
end
