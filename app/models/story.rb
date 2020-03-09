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

class Story < ApplicationRecord
  validates :title, :body, presence: true
  validates :title, uniqueness: true

  belongs_to :author,
  primary_key: :id,
  foreign_key: :author_id,
  class_name: "User"

  has_one_attached :image
end
