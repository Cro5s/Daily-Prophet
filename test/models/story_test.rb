# == Schema Information
#
# Table name: stories
#
#  id         :bigint           not null, primary key
#  body       :string           not null
#  image      :string
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :bigint           not null
#
# Indexes
#
#  index_stories_on_title  (title) UNIQUE
#
require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
