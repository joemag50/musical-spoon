class AddColumnUrlThumbnailImage < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :url_thumbnail, :string
  end
end
