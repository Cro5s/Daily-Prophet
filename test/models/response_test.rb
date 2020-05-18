# == Schema Information
#
# Table name: responses
#
#  id         :bigint           not null, primary key
#  body       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :bigint           not null
#  story_id   :bigint           not null
#
require 'test_helper'

class ResponseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
