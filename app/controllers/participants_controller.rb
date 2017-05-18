class ParticipantsController < ApplicationController

	def index
		@event_id = Event.find(params[:id])
		@participants = Participant.where("event_id = ?",@event_id)
		respond_to do |format|
      		format.html
      		format.csv { send_data @participants.to_csv }
      		format.xls { send_data @participants.to_csv(col_sep: "\t") }
    	end
  	end


	def new
		@participant = Participant.new
	end

	def create
		@participant = Participant.new(participant_params)
		respond_to do |format|
  			if @participant.save
    			format.html { redirect_to @participant.event, notice: 'Participant was successfully registered.' }
				format.json { render :show, status: :created, location: @event }
  			else
  				format.html { render :new }
				format.json { render json: @participant.errors, status: :unprocessable_entity }
    		end
    	end
	end

private

def participant_params
	params.require(:participant).permit(:event_id, :name, :email, :company)
end

end
