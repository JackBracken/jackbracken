class PhotographController < ApplicationController
	def index
		@photographs = Photograph.order(:title).page params[:page]
	end

	def create
		@photograph = Photograph.create(photo_params)

		if @photograph.save
			redirect_to photograph_index_url
		else
			redirect_to new_photograph_url
		end
	end

	def new
		@photograph = Photograph.new
	end

	def destroy
		@photograph.destroy
		redirect_to root_url
	end

	private

		def photo_params
			params.require(:photograph).permit(:title, :date_taken, :photo)
		end
end
