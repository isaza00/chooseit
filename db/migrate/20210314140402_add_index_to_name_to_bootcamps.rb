class AddIndexToNameToBootcamps < ActiveRecord::Migration[6.0]
  def change
    add_index :bootcamps, :name
  end
end
