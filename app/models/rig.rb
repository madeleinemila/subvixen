# == Schema Information
#
# Table name: rigs
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  width      :integer
#  height     :integer
#

# Note: DB use was decommissioned for demo deployment. Reenable if restoring db use.
# class Rig < ApplicationRecord
  # has_many :fixtures
# end

class Rig
  def initialize(id, name, width, height, fixtures)
    @id = id
    @name = name
    @width = width
    @height = height
    @fixtures = fixtures
  end

  def id
    @id
  end

  def name
    @name
  end

  def width
    @width
  end

  def height
    @height
  end

  def fixtures
    @fixtures
  end
end
