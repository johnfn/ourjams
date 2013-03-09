# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  entry_id        :integer
#  remember_token  :string(255)
#  description     :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :description
  has_many :entries

  has_secure_password

  before_create :create_remember_token
  before_save { |user| user.email = email.downcase }

  attr_accessor :updating_password

  def should_validate_password?
    updating_password || new_record?
  end

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }, :if => :should_validate_password?


  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
end
