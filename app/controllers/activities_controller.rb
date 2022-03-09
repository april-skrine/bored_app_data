class ActivitiesController < ApplicationController

    get '/activities' do 
        activities = Activity.all
        activities.to_json()
    end

    get '/activities/:id' do
        activity = Activity.find(params[:id])
        activity.to_json()
    end

end