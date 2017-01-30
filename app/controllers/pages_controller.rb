class PagesController < ApplicationController

  # before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
  end

  def contest
    flash[:notice] = "Sorry, this contest has ended"
    redirect_to welcome_url
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
end
