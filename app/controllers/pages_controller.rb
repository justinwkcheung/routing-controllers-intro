class PagesController < ApplicationController

  # before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
  end

  def contest
    flash[:notice] = "Sorry, this contest has ended"
    redirect_to kitten_url(400)
  end

  def kitten
    set_kitten_url
  end

  def kittens
    set_kitten_url
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    if params[:magic_word] == "wazoo"
      #doing nothing will point you to the right page
    else
      flash[:alert] =  "Sorry, you're not authorized to see this page!"
      redirect_to root_url
    end
  end
end
