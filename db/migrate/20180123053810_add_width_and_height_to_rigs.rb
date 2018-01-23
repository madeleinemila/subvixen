class AddWidthAndHeightToRigs < ActiveRecord::Migration[5.1]
  def change
    add_column :rigs, :width, :integer
    add_column :rigs, :height, :integer
  end
end
