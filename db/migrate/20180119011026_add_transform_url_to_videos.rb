class AddTransformUrlToVideos < ActiveRecord::Migration[5.1]
  def change
    add_column :videos, :transform_url, :text
  end
end
