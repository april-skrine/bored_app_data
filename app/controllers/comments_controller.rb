class CommentsController < ApplicationController

    get '/comments/:activity' do
        comments = Comment.all.where(params[:activity])
        comments.to_json(only: [:user_name, :user_comment])
    end

    post '/comments' do
        Comment.create(
            user_name: params[:user_name],
            user_comment: params[:user_comment],
            activity: params[:activity] 
        ).to_json()
    end

end