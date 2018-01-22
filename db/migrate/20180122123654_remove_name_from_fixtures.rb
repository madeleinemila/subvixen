class RemoveNameFromFixtures < ActiveRecord::Migration[5.1]
  def change
    remove_column :fixtures, :name, :text
  end
end
