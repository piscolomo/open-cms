module Sluggable
  extend ActiveSupport::Concern

  included do
    before_save :define_slug
  end

  private

  def define_slug
    self.slug = send(label_name).parameterize
  end

  def label_name
    self.is_a?(Post) ? "title" : "name"
  end
end