class CommentsController < ApplicationController

    get '/comments' do
        comments = Comment.all
        comments.to_json(only: [:user_name, :user_comment])
    end

    get '/comments/:activity_id' do
        comments = Comment.all.where(params[:activity_id])
        comments.to_json(only: [:user_name, :user_comment])
    end

    post '/comments' do
        Comment.create(
            user_name: params[:user_name],
            user_comment: params[:user_comment],
            activity_id: params[:activity_id] 
        ).to_json()
    end

end