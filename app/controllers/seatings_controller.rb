class SeatingsController < ApplicationController

	def index
		@seating= Seating.all
		#or @booked?
	end

	def show
		@seating= Seating.find(params[:id])
	end

	def new
		@seating= Seating.new

	end

	def create
		@seating= Seating.new
		@seating
	end


	def edit
		@seating= Seating.find(params[:id])
	end

	def update
		@seating= Seating.find(params[:id])
		if @seating.save
		redirect_to @seating
	end

	def destroy
		@seating.destroy
	end


"seatings", force: :cascade do |t|
	t.integer  "Restaurant_id"
	t.integer  "filled"
	t.datetime "created_at",    null: false
	t.datetime "updated_at",    null: false
	t.index ["Restaurant_id"], name: "index_seatings_on_Restaurant_id"
end
