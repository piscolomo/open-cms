class Category < ActiveRecord::Base
  has_many :posts

  validates :name, presence: true

  include Sluggable
end
