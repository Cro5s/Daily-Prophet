# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  name            :string           not null
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email          (email) UNIQUE
#  index_users_on_session_token  (session_token) UNIQUE
#  index_users_on_username       (username) UNIQUE
#

class User < ApplicationRecord
  validates :username, :email, :name, :session_token, :password_digest, presence: true
  validates :username, :email, :session_token, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }
  
  after_initialize :ensure_session_token

  has_many :stories,
  primary_key: :id,
  foreign_key: :author_id,
  class_name: "Story",
  dependent: :destroy

  has_many :responses,
  primary_key: :id,
  foreign_key: :author_id,
  class_name: "Response",
  dependent: :destroy

  attr_reader :password

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    return nil unless user
    user.valid_password?(password) ? user : nil
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def reset_session_token!
    self.session_token = User.generate_session_token
    self.save!
    self.session_token
  end

  def valid_password?(password)
    bcrypt_password = BCrypt::Password.new(self.password_digest)
      .is_password?(password)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  private
  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end
  
end
