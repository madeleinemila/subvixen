class ChangeDataTypeForPositionNumber < ActiveRecord::Migration[5.1]
  def change
    change_column :fixtures, :position_number, :decimal
  end
end
