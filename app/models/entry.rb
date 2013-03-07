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
#

class Entry < ActiveRecord::Base
  attr_accessible :description, :link, :name
end
