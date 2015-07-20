require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "it should create slug" do
    it "when category is created" do
      category = create(:category, name: "Flaca Despechada")
      expect(category.slug).to eq("flaca-despechada")
    end

    it "when name is updated" do
      category = create(:category, name: "Demo category")
      category.update(name: "Zona VHS")
      expect(category.slug).to eq("zona-vhs")
    end
  end
end
