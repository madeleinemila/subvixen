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

class Rig < ApplicationRecord
  has_many :fixtures
end
