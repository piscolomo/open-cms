module Sluggable
  extend ActiveSupport::Concern

  included do
    before_save :define_slug
    after_save :reload_routes
  end

  private

  def define_slug
    self.slug = send(label_name).parameterize
  end

  def label_name
    self.is_a?(Post) ? "title" : "name"
  end

  def reload_routes
    Rails.application.reload_routes! if self.slug_changed?
  end
end