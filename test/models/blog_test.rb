# == Schema Information
#
# Table name: blogs
#
#  id         :bigint           not null, primary key
#  user_id    :integer
#  title      :string
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class BlogTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
