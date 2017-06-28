class AttendeesController < ApplicationController
	def create
		event = Event.find(params[:attendee][:attended_event_id])
    if event.guests.include?(current_user)
      flash[:danger] = "You are already attending #{event.title}."
    else
      current_user.attendees.create(attended_event: event)
      flash[:success] = "You are now attending #{event.title}."
    end
    redirect_to event
	end
end
