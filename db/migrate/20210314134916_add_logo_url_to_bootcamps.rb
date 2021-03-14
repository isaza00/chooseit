class AddLogoUrlToBootcamps < ActiveRecord::Migration[6.0]
  def change
    add_column :bootcamps, :logo_url, :string
  end
end
