class Post < ActiveRecord::Base
  belongs_to :category

  include Sluggable
end
