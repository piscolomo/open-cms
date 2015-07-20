class Category < ActiveRecord::Base
  has_many :posts

  include Sluggable
end
