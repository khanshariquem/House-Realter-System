class HunterIndexController < ApplicationController
  def index
    session[:as_hunter] = true
    session[:as_realtor] = false
  end
end
