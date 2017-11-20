class CharitiesController < ApplicationController
  def index
    @charities = Charity.all
  end

  def show
    params[:currentUser] = 'Bernie Roach'
    @charity = Charity.find(params[:id])
    @achievements = Achievement.all
  end
end
