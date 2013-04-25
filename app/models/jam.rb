# == Schema Information
#
# Table name: jams
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  description  :text
#  start        :datetime
#  end          :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  entry_id     :integer
#  organizer_id :integer
#

class Jam < ActiveRecord::Base
  attr_accessible :description, :end, :name, :start, :end, :organizer_id
  has_many :entries
  belongs_to :user, :class_name => "User", :foreign_key => "organizer_id"

  def started
    Time.now - self.start > 0
  end

  def ended
    Time.now - self.end > 0
  end

  def ongoing
    self.started && !self.ended
  end
end
