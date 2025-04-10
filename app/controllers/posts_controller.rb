class PostsController < ApplicationController
    :before_action :set_post, only: [:show, :edit, :upgrate, :destroy]

    def index
        @posts = Post.all
    end

    def show; end

    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(post_params)
        if @post.save
            redirect_to @post, notice: "Post criado com sucesso"
        else
            render :new
        end
    end

    def edit; end
    
    def upgrate
        if @post.upgrate(post_params)
            redirect_to @post, notice: "Post atualizado com sucesso"
        else
            render :edit
        end
    end
    
    def destroy
        @post.destroy
        redirect_to posts_path, notice: "Post excluido com sucesso"
    end

    private

    def set_post
        @post = Post.find(params[:id])
    end

    def post_params
        params.require(:post).permit(:title, :content)
    end

    def 
end
