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
class Response < ApplicationRecord
  validates :body, presence: true

  belongs_to :author,
  primary_key: :id,
  foreign_key: :author_id,
  class_name: "User"

  belongs_to :story,
  primary_key: :id,
  foreign_key: :story_id,
  class_name: "Story"
end
