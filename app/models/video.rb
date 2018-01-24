# == Schema Information
#
# Table name: videos
#
#  id                :integer          not null, primary key
#  name              :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  url               :text
#  transform_url     :text
#  transform_sml_url :text
#

class Video < ApplicationRecord
  validates :name, :url, :transform_url, :transform_sml_url, presence: true
end
