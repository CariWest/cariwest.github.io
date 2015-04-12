class Post < ActiveRecord::Base
  validates :title, :content, presence: true
  validates :title, :content, uniqueness: true
end
