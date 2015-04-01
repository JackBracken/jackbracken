class HomeController < ApplicationController
  def index
  	flash[:success] = "Foo bar"
  end
end