class CategoriesController < ApplicationController
  def show
    @category = Category.includes(:posts).find(params[:id])
  end
end
