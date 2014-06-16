class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    
  end

  def handicap
    puts "awesome"
  end
end
