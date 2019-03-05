module Api
    
    class CommentsController < ApplicationController


        def index
            render json: Comment.all
        end

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
        

        private

        def comment_params
            params.require(:comment).permit(:content, :author, :post_id)
        end
    end

end