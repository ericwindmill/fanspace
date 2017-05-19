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

require 'test_helper'

class SetlistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
