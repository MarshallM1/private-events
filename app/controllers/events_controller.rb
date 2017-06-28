class EventsController < ApplicationController
	def index
		@past_events = Event.past
    @upcoming_events = Event.upcoming
	end

	def new
		@event = Event.new
	end

	def create
		@event = current_user.events.build(event_params)
    if @event.save
      flash[:success] = 'Event created successsfully!'
      redirect_to root_path
    else
      flash.now[:error] = 'Whoops! Something went wrong.'
      render 'new'
    end
	end

	def show
		@event = Event.find(params[:id])
	end

	private

		def event_params
			params.require(:event).permit(:title, :description, :date, :location)
		end
end
