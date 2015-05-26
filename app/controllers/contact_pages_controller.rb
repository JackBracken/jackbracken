class ContactPagesController < ApplicationController
  before_action :set_contact_page, only: [:show, :edit, :update, :destroy]

  # GET /contact_pages/new
  def new
    @contact_page = ContactPage.new
  end

  # POST /contact_pages
  def create
    @contact_page = ContactPage.new(contact_page_params)
    @contact_page.request = request

    if @contact_page.deliver
      redirect_to photograph_index_url
    else
      redirect_to 
    end
  end

  def delivered

  end

  def failed

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_page
      @contact_page = ContactPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_page_params
      params.require(:contact_page).permit(:title, :body, :from)
    end
end
