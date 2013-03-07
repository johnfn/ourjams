# == Schema Information
#
# Table name: compos
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  start       :date
#  end         :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Jam < ActiveRecord::Base
  attr_accessible :description, :end, :name, :start
  has_many :entries
end
