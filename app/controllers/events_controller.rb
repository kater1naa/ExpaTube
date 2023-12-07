class EventsController < ApplicationController

  def index
    if params[:category].present? && params[:category].downcase != "all meetups"
      @category = Category.find_by(name: params[:category])
      @events = @category.events
    elsif params[:query].present?
      @events = Event.search_by_title_and_description(params[:query]).includes(:category)
      @events += Event.near(params[:query], 30).includes(:category)
    else
      @events = Event.all.includes(:category)
    end
  end

  def show
    @event = Event.find(params[:id])
    @events = Event.all
    @creator = @event.user
    @markers = [{ lat: @event.latitude, lng: @event.longitude}]
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.user_id == current_user.id
      @event.destroy
    end
    redirect_to attendances_path, status: :see_other
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :category_id, :address, :limit, :starts_at, :ends_at, :photo)
  end
end
