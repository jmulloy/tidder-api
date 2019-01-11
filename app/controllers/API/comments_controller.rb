class Api::CommentsController < ApplicationController


    def show
        render json: @comment
    end

    def create 
        comment = Comment.new(comment_params)
        if comment.save
            render json: comment 
        else 
            render json: {message: comment.errors }, status: 400
        end
    end

    # def index
    #     @comments = Comment.all
    #     respond_to do |f|
    #         f.html {render :index}
    #         f.json {render json: @posts}
    #     end
    # end

    # def new
    #     @comment = Commment.new
    # end

    # def create
    #     @comment = Comment.new(comment_params)
    #     if @comment.save
    #         session[:user_id] = @user.id
    #         redirect_to landing_path
    #     else
        
    #         render :new
    #     end
    # end

    

    private

    def comment_params
        params.require(:comment).permit(:content)
    end
end