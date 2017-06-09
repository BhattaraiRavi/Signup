# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  title       :string
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  fromdate    :datetime
#  todate      :datetime
#  multiday    :string
#  description :string
#  created_by  :string
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
