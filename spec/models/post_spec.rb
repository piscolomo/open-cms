require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "it should create slug" do
    it "when post is created" do
      post = create(:post, title: "Hola Mundo")
      expect(post.slug).to eq("hola-mundo")
    end

    it "when title is updated" do
    end
  end
end
