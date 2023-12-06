class AttendancesController < ApplicationController
  before_action :authenticate_user! # Add this line if you want to ensure that only authenticated users can access these
  def index
    @attendances = current_user.attendances.includes(:event)
    @events_as_host = current_user.events
  end

  def create
    @event = Event.find(params[:event_id])
    @attendance = current_user.attendances.new(event: @event)

    if @attendance.save
      redirect_to @event, notice: 'Attendance created successfully!'
    else
      redirect_to @event, alert: 'You already participate to this event.'
    end
  end

  def destroy
    @attendance = Attendance.find(params[:id])
    @attendance.destroy
    redirect_to events_path, status: :see_other
  end
end
