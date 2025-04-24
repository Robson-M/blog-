class PostsController < ApplicationController

    def index
        @posts = Post.all
        @recent_posts = Post.last(5)
    end

    def show
        @post = Post.find(params[:id])
    end

    private

    def post_params
        params.require(:post).permit(:title, :content, :image, :start_date)
    end
end
