class EventsController < ApplicationController

  def index
    @events = Event.all

    if params[:category].present?
      category = Category.find_by(name: params[:category])
      @events = @events.where(category_id: category.id)
    end
    raise
  end
end
