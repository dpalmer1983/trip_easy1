Rails.application.routes.draw do
  # Routes for the Location_option resource:

  root 'trips#index'

  # CREATE
  get "/location_options/new", :controller => "location_options", :action => "new"
  post "/create_location_option", :controller => "location_options", :action => "create"

  # READ
  get "/location_options", :controller => "location_options", :action => "index"
  get "/location_options/:id", :controller => "location_options", :action => "show"

  # UPDATE
  get "/location_options/:id/edit", :controller => "location_options", :action => "edit"
  post "/update_location_option/:id", :controller => "location_options", :action => "update"

  # DELETE
  get "/delete_location_option/:id", :controller => "location_options", :action => "destroy"
  #------------------------------

  # Routes for the Date_option resource:
  # CREATE
  get "/date_options/new", :controller => "date_options", :action => "new"
  post "/create_date_option", :controller => "date_options", :action => "create"

  # READ
  get "/date_options", :controller => "date_options", :action => "index"
  get "/date_options/:id", :controller => "date_options", :action => "show"

  # UPDATE
  get "/date_options/:id/edit", :controller => "date_options", :action => "edit"
  post "/update_date_option/:id", :controller => "date_options", :action => "update"

  # DELETE
  get "/delete_date_option/:id", :controller => "date_options", :action => "destroy"
  #------------------------------

  # Routes for the Participant resource:
  # CREATE
  get "/participants/new", :controller => "participants", :action => "new"
  post "/create_participant", :controller => "participants", :action => "create"

  # READ
  get "/participants", :controller => "participants", :action => "index"
  get "/participants/:id", :controller => "participants", :action => "show"

  # UPDATE
  get "/participants/:id/edit", :controller => "participants", :action => "edit"
  post "/update_participant/:id", :controller => "participants", :action => "update"

  # DELETE
  get "/delete_participant/:id", :controller => "participants", :action => "destroy"
  #------------------------------

  # Routes for the Date_preference resource:
  # CREATE
  get "/date_preferences/new", :controller => "date_preferences", :action => "new"
  post "/create_date_preference", :controller => "date_preferences", :action => "create"

  # READ
  get "/date_preferences", :controller => "date_preferences", :action => "index"
  get "/date_preferences/:id", :controller => "date_preferences", :action => "show"

  # UPDATE
  get "/date_preferences/:id/edit", :controller => "date_preferences", :action => "edit"
  post "/update_date_preference/:id", :controller => "date_preferences", :action => "update"

  # DELETE
  get "/delete_date_preference/:id", :controller => "date_preferences", :action => "destroy"
  #------------------------------

  # Routes for the Location_preference resource:
  # CREATE
  get "/location_preferences/new", :controller => "location_preferences", :action => "new"
  post "/create_location_preference", :controller => "location_preferences", :action => "create"

  # READ
  get "/location_preferences", :controller => "location_preferences", :action => "index"
  get "/location_preferences/:id", :controller => "location_preferences", :action => "show"

  # UPDATE
  get "/location_preferences/:id/edit", :controller => "location_preferences", :action => "edit"
  post "/update_location_preference/:id", :controller => "location_preferences", :action => "update"

  # DELETE
  get "/delete_location_preference/:id", :controller => "location_preferences", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Trip resource:
  # CREATE
  get "/trips/new", :controller => "trips", :action => "new"
  post "/create_trip", :controller => "trips", :action => "create"

  # READ
  get "/trips", :controller => "trips", :action => "index"
  get "/trips/:id", :controller => "trips", :action => "show"

  # UPDATE
  get "/trips/:id/edit", :controller => "trips", :action => "edit"
  post "/update_trip/:id", :controller => "trips", :action => "update"

  # DELETE
  get "/delete_trip/:id", :controller => "trips", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
