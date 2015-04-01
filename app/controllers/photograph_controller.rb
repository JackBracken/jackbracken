class PhotographController < ApplicationController
	def index
		@photographs = Photograph.order(:name).page params[:page]
	end

	def create
		@photograph = Photograph.create(photo_params)
		if @photograph.save

		else

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
			params.require(:photograph).permit(:photo)
		end
end
