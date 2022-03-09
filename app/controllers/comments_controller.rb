class CommentsController < ApplicationController

    get '/comments' do
        comments = Comment.all
        comments.to_json(only: [:user_name, :user_comment])
    end

    get '/comments/activities/:activity_id' do
        comments = Comment.all.where(activity_id: params[:activity_id])
        comments.to_json()
    end

    post '/comments' do
        Comment.create(
            user_name: params[:user_name],
            user_comment: params[:user_comment],
            activity_id: params[:activity_id] 
        ).to_json()
    end

    get '/comments/:id' do
        comment = Comment.find(params[:id])
        comment.to_json()
    end

    delete '/comments/:id' do
        comment = Comment.find(params[:id])
        comment.destroy
        comment.to_json()
    end

end