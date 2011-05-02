class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_days_to_launch

  private 

  def set_days_to_launch
    @days = rand(5) + 1
  end
end
