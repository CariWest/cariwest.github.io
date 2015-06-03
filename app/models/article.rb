class Article < ActiveRecord::Base
  validates :title, :excerpt, :content, presence: true
  validates :title, :excerpt, :content, uniqueness: true

  has_many :images
end
