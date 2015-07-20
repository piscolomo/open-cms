require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "it should create slug" do
    it "when post is created" do
      post1 = create(:post, title: "Hola Mundo")
      post2 = create(:post, title: "Awesome experience travelling")
      expect(post1.slug).to eq("hola-mundo")
      expect(post2.slug).to eq("awesome-experience-travelling")
    end

    it "when title is updated" do
      post = create(:post, title: "Hola Mundo")
      post.update(title: "My New awesome title")
      expect(post.slug).to eq("my-new-awesome-title")
    end
  end
end
