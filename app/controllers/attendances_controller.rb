class AttendancesController < ApplicationController
  before_action :authenticate_user! # Add this line if you want to ensure that only authenticated users can access these actions

  def index
    @attendances = current_user.attendances
  end

  def create
    @event = Event.find(params[:event_id])
    @attendance = current_user.attendances.new(event: @event)

    if @attendance.save
      redirect_to @event, notice: 'Attendance created successfully!'
    else
      redirect_to @event, alert: 'Failed to create attendance.'
    end
  end
end
