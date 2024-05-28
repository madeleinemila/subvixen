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

# Note: DB use was decommissioned for demo deployment. Reenable if restoring db use.
# class Video < ApplicationRecord
  # validates :name, :url, :transform_url, :transform_sml_url, presence: true
# end

class Video
  def initialize(id, name, url, transform_url, transform_sml_url)
    @id = id
    @name = name
    @url = url
    @transform_url = transform_url
    @transform_sml_url = transform_sml_url
  end

  def id
    @id
  end

  def name
    @name
  end

  def url
    @url
  end

  def transform_url
    @transform_url
  end

  def transform_sml_url
    @transform_sml_url
  end

end
