class OwnersController < ApplicationController

	def index
		@owners = Owner.all
	end

	def show
	end

	def new
		@owner =Owner.new
	end

	def create
		@owner=Owner.new
		@owner.name = params[:owner][:name]
	end

	def edit
		@owner= Owner.find(params[:id])
	end

	def update
		@owner.name = params[:owner] [:name]
		if @owner.save

		end
	end

	def destroy
		@owner.destroy
	end

end
