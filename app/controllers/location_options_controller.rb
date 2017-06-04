class LocationOptionsController < ApplicationController
  def index
    @location_options = LocationOption.all

    render("location_options/index.html.erb")
  end

  def show
    @location_option = LocationOption.find(params[:id])

    render("location_options/show.html.erb")
  end

  def new
    @location_option = LocationOption.new

    render("location_options/new.html.erb")
  end

  def create
    @location_option = LocationOption.new

    @location_option.option = params[:option]
    @location_option.trip_id = params[:trip_id]

    save_status = @location_option.save

    if save_status == true
      redirect_to("/location_options/#{@location_option.id}", :notice => "Location option created successfully.")
    else
      render("location_options/new.html.erb")
    end
  end

  def edit
    @location_option = LocationOption.find(params[:id])

    render("location_options/edit.html.erb")
  end

  def update
    @location_option = LocationOption.find(params[:id])

    @location_option.option = params[:option]
    @location_option.trip_id = params[:trip_id]

    save_status = @location_option.save

    if save_status == true
      redirect_to("/location_options/#{@location_option.id}", :notice => "Location option updated successfully.")
    else
      render("location_options/edit.html.erb")
    end
  end

  def destroy
    @location_option = LocationOption.find(params[:id])

    @location_option.destroy

    if URI(request.referer).path == "/location_options/#{@location_option.id}"
      redirect_to("/", :notice => "Location option deleted.")
    else
      redirect_to(:back, :notice => "Location option deleted.")
    end
  end
end
