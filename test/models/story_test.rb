# == Schema Information
#
# Table name: stories
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  body       :string           not null
#  image      :string
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
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
