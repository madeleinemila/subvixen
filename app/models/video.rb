# == Schema Information
#
# Table name: videos
#
#  id            :integer          not null, primary key
#  name          :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  url           :text
#  transform_url :text
#

class Video < ApplicationRecord
end
