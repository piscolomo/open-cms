class Post < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: true

  include Sluggable
end
