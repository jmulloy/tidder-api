class PostsController < ApplicationController
    def set_post 
        @post = Post,find_by(id: params[:id])
    end

    def index 
        render json: Post.all
    end

    def show
        render json: @post
    end

    def create 
        post = Post.new(post_params)
        if post.save
            render json: post 
        else 
            render json: {message: post.errors }, status: 400
        end
    end

    def update 
        if @post.update(post_params)
            render json: @post
        else
            render :json { message: @post.errors}, status: 400
    end
    def destroy 
        if @post.destroy(post_params)
            render json: Post.all, status:204
        else
            render :json { message: "Couldnt Delete the POST"}, status: 400
    end

    def post_params
        params.require(:post).permit(:title, :content, :upvotes)
    end

end
