class DatePreferencesController < ApplicationController
  def index
    @date_preferences = DatePreference.all

    render("date_preferences/index.html.erb")
  end

  def show
    @date_preference = DatePreference.find(params[:id])

    render("date_preferences/show.html.erb")
  end

  def new
    @date_preference = DatePreference.new

    render("date_preferences/new.html.erb")
  end

  def create
    @date_preference = DatePreference.new

    @date_preference.user_id = params[:user_id]
    @date_preference.date_options_id = params[:date_options_id]

    save_status = @date_preference.save

    if save_status == true
      redirect_to("/date_preferences/#{@date_preference.id}", :notice => "Date preference created successfully.")
    else
      render("date_preferences/new.html.erb")
    end
  end

  def edit
    @date_preference = DatePreference.find(params[:id])

    render("date_preferences/edit.html.erb")
  end

  def update
    @date_preference = DatePreference.find(params[:id])

    @date_preference.user_id = params[:user_id]
    @date_preference.date_options_id = params[:date_options_id]

    save_status = @date_preference.save

    if save_status == true
      redirect_to("/date_preferences/#{@date_preference.id}", :notice => "Date preference updated successfully.")
    else
      render("date_preferences/edit.html.erb")
    end
  end

  def destroy
    @date_preference = DatePreference.find(params[:id])

    @date_preference.destroy

    if URI(request.referer).path == "/date_preferences/#{@date_preference.id}"
      redirect_to("/", :notice => "Date preference deleted.")
    else
      redirect_to(:back, :notice => "Date preference deleted.")
    end
  end
end
