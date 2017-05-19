# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  location        :string
#  about           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  rank            :string
#  tagline         :string
#  email           :string
#  profile_img_url :string
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
