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

require 'test_helper'

class CompoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
