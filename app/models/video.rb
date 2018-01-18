# == Schema Information
#
# Table name: videos
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Video < ApplicationRecord
end
