class LocationPreferencesController < ApplicationController
  def index
    @location_preferences = LocationPreference.all

    render("location_preferences/index.html.erb")
  end

  def show
    @location_preference = LocationPreference.find(params[:id])

    render("location_preferences/show.html.erb")
  end

  def new
    @location_preference = LocationPreference.new

    render("location_preferences/new.html.erb")
  end

  def create
    @location_preference = LocationPreference.new

    @location_preference.user_id = params[:user_id]
    @location_preference.location_options_id = params[:location_options_id]

    save_status = @location_preference.save

    if save_status == true
      redirect_to("/location_preferences/#{@location_preference.id}", :notice => "Location preference created successfully.")
    else
      render("location_preferences/new.html.erb")
    end
  end

  def edit
    @location_preference = LocationPreference.find(params[:id])

    render("location_preferences/edit.html.erb")
  end

  def update
    @location_preference = LocationPreference.find(params[:id])

    @location_preference.user_id = params[:user_id]
    @location_preference.location_options_id = params[:location_options_id]

    save_status = @location_preference.save

    if save_status == true
      redirect_to("/location_preferences/#{@location_preference.id}", :notice => "Location preference updated successfully.")
    else
      render("location_preferences/edit.html.erb")
    end
  end

  def destroy
    @location_preference = LocationPreference.find(params[:id])

    @location_preference.destroy

    if URI(request.referer).path == "/location_preferences/#{@location_preference.id}"
      redirect_to("/", :notice => "Location preference deleted.")
    else
      redirect_to(:back, :notice => "Location preference deleted.")
    end
  end
end
