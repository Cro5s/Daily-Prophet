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

class Story < ApplicationRecord
  validates :title, :body, presence: true
  validates :title, uniqueness: true

  belongs_to :author,
  primary_key: :id,
  foreign_key: :author_id,
  class_name: "User"

  has_many :responses,
  primary_key: :id,
  foreign_key: :story_id,
  class_name: "Response",
  dependent: :destroy

  has_one_attached :image
end
