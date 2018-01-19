class AddTransformSmlUrlToVideos < ActiveRecord::Migration[5.1]
  def change
    add_column :videos, :transform_sml_url, :text
  end
end
