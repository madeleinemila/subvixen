# == Schema Information
#
# Table name: fixtures
#
#  id              :integer          not null, primary key
#  name            :text
#  x               :integer
#  y               :integer
#  position_number :integer
#  rig_id          :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Fixture < ApplicationRecord
  belongs_to :rig
end
