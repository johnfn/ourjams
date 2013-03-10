# == Schema Information
#
# Table name: entries
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  link        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  jam_id      :integer
#  user_id     :integer
#

class Entry < ActiveRecord::Base
  attr_accessible :description, :link, :name, :jam, :user
  belongs_to :jam
  belongs_to :user
end
