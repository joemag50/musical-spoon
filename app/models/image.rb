class Image < ApplicationRecord
  validates :url, presence: true, uniqueness: true
  validates :url_thumbnail, uniqueness: true

  belongs_to :category
end
