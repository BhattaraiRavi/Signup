class EventsController < ApplicationController

	def index
		@events = Event.all.order('fromdate ASC')
		if params[:search]
			@events = Event.search(params[:search]).order("fromdate ASC")
		else
			@events = Event.all.order('fromdate ASC')
		end
	end

	def show
		@event = Event.find (params[:id])
		@participant = Participant.new(event_id: params[:id])
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		respond_to do |format|
  			if @event.save
    			format.html { redirect_to @event, notice: 'Event was successfully created.' }
				format.json { render :show, status: :created, location: @event }
  			else
  				format.html { render :new }
				format.json { render json: @event.errors, status: :unprocessable_entity }
    		end
    	end
	end

	def edit
		@event = Event.find (params[:id])
	end

	def update
		@event = Event.find (params[:id])
		respond_to do |format|
			if @event.update(event_params)
				format.html { redirect_to @event, notice: 'Event was successfully updated.' }
				format.json { render :show, status: :ok, location: @event }
			else
				format.html { render :edit }
				format.json { render json: @event.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@event = Event.find (params[:id])
		@event.destroy
		redirect_to events_url, notice: 'Event deleted successfully.'
	end

private

def event_params
	params.require(:event).permit(:title, :fromdate, :todate, :multiday, :image, :description)
end

end
