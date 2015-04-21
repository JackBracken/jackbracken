class PhotographController < ApplicationController
	http_basic_authenticate_with name: Rails.application.secrets.ADMIN_USERNAME, 
							 password: Rails.application.secrets.ADMIN_PASSWORD, 
							 except: [:index, :show]

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

	def show
		@photograph = Photograph.friendly.find(params[:id])
		@next				= Photograph.where("id > ?", @photograph.id)
														.first

		@prev				= Photograph.where("id < ?", @photograph.id)
														.last
	end

	private

		def photo_params
			params.require(:photograph).permit(:title, :date_taken, :photo)
		end
end
