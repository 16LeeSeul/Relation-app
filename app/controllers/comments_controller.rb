class CommentsController < ApplicationController
    before_action :set_comment, only: [:destroy]
    before_action :authenticate_user!
    def create
        @comment = Comment.new(comment_params)
        @comment.user = current_user
        @comment.save
        redirect_to @comment.commentable
        # redirect_back fallback_location: root_url
    end
    
    def destroy
        @comment.destroy
        redirect_to @comment.commentable # == redirect_to song_url(@song.id) == redirect_to song_url(@song) == redirect_to @song

        # redirect_back fallback_location: root_url
    end
    
    private
    def set_comment
        @comment = Comment.find params[:id]
    end

    def comment_params
        params.require(:comment).permit(:content, :commentable_id, :commentable_type)
    end
    
end
