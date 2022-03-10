class ActivitiesController < ApplicationController

    get '/activities' do 
        activities = Activity.all
        activities.to_json()
    end

    get '/activities/most_popular/:mood_id' do
        find_mood = Activity.all.where(mood_id: params[:mood_id])
        find_mood.update(:most_popular => false)
        most_popular = find_mood.most_popular
        most_popular.update(:most_popular => true)
        most_popular.to_json()
    end

    get '/activities/:id' do
        activity = Activity.find(params[:id])
        activity.to_json()
    end
    
    get '/activities/favorites' do 
        activities = Activity.all.where(:favorite => true)
        activities.to_json()
    end

    patch '/activities/:id' do 
        
        activity = Activity.find(params[:id])
        activity.update(favorite: params[:favorite])
        activity.to_json()
    end

end