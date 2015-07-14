class PostsController < ApplicationController
  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
  end
  
  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:post).permit(:title, :body, :slug)
  end
end