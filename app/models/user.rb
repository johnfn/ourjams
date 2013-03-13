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
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :token_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :name, :password, :description, :entry_id, :jam_id
  attr_accessible :password_confirmation, :remember_me
  has_many :entries
  has_many :comments
  has_many :users
  has_many :jams, :foreign_key => "organizer_id"

  validates :name, presence: true, length: { maximum: 50 }
end
