class EventsController < ApplicationController

  def index
    @events = Event.all

    if params[:category].present?
      category = Category.find_by(name: params[:category])
      @events = @events.where(category_id: category.id)
    end
  end

  def show
    @event = Event.find(params[:id])
    @creator = @event.user
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

  private

  def event_params
    params.require(:event).permit(:title, :description, :category_id, :address, :limit, :starts_at, :ends_at)
  end
end
