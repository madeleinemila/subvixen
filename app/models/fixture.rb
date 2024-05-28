# == Schema Information
#
# Table name: fixtures
#
#  id              :integer          not null, primary key
#  x               :integer
#  y               :integer
#  position_number :integer
#  rig_id          :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

# Note: DB use was decommissioned for demo deployment. Reenable if restoring db use.
# class Fixture < ApplicationRecord
  # belongs_to :rig
# end

class Fixture
  def initialize(id, x, y, position_number)
    @id = id
    @x = x
    @y = y
    @position_number = position_number
  end

  def id
    @id
  end

  def x
    @x
  end

  def y
    @y
  end

  def position_number
    @position_number
  end
end
