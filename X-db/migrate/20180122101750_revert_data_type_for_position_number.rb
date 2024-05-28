class RevertDataTypeForPositionNumber < ActiveRecord::Migration[5.1]
  def change
    change_column :fixtures, :position_number, :integer
  end
end
