class MainController < ApplicationController

  def index

  end

  def login
    if params[:id] == "admin" && params[:pw] == "admin"
      redirect_to "/list"
    else
      puts "xxxxx"
      redirect_to (:back)
    end
  end

end
