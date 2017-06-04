class DateOptionsController < ApplicationController
  def index
    @date_options = DateOption.all

    render("date_options/index.html.erb")
  end

  def show
    @date_option = DateOption.find(params[:id])

    render("date_options/show.html.erb")
  end

  def new
    @date_option = DateOption.new

    render("date_options/new.html.erb")
  end

  def create
    @date_option = DateOption.new

    @date_option.trip_id = params[:trip_id]
    @date_option.option = params[:option]

    save_status = @date_option.save

    if save_status == true
      redirect_to("/date_options/#{@date_option.id}", :notice => "Date option created successfully.")
    else
      render("date_options/new.html.erb")
    end
  end

  def edit
    @date_option = DateOption.find(params[:id])

    render("date_options/edit.html.erb")
  end

  def update
    @date_option = DateOption.find(params[:id])

    @date_option.trip_id = params[:trip_id]
    @date_option.option = params[:option]

    save_status = @date_option.save

    if save_status == true
      redirect_to("/date_options/#{@date_option.id}", :notice => "Date option updated successfully.")
    else
      render("date_options/edit.html.erb")
    end
  end

  def destroy
    @date_option = DateOption.find(params[:id])

    @date_option.destroy

    if URI(request.referer).path == "/date_options/#{@date_option.id}"
      redirect_to("/", :notice => "Date option deleted.")
    else
      redirect_to(:back, :notice => "Date option deleted.")
    end
  end
end
